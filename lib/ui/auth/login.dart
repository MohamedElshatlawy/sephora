import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sephora/api/authentication.dart';
import 'package:sephora/api/shared_pref.dart';
import 'package:sephora/provider/user_provider.dart';
import 'package:sephora/ui/widgets/custom_widgets.dart';
import 'package:sephora/ui/widgets/myAppBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var mailController = TextEditingController();

  var passController = TextEditingController();

  bool passVisible = false;
  var loginKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      key: loginKey,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/makeup.webp',
                  scale: 5,
                ),
                Text(
                  'You have to signin to see this page.',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  """Sign in to view all favourite items in
                 the love list""",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: mailController,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      labelText: 'EMAIL',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      labelStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passController,
                  cursorColor: Colors.black,
                  obscureText: !passVisible,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            (passVisible)
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              passVisible = !passVisible;
                            });
                          }),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      labelText: 'Password',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      labelStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    onPressed: () async {
                      if (!validateInputs(
                          mailController.text, passController.text)) {
                        loginKey.currentState.showSnackBar(
                            SnackBar(content: Text('Fill all inputs')));
                        return;
                      }
                      //Login user
                      showLoadingDialog(
                          context: context, text: 'Signing in...');
                      await login(
                              mail: mailController.text,
                              password: passController.text)
                          .then((value) {
                        dissmissDialog(context);
                        if (value == null) {
                          showSnackBarError(
                              key: loginKey, msg: 'Error mail or password !');
                        } else {
                          userProvider.setUser(value);
                          //Add user to shared preference
                          saveUserSharedPreference(
                              mail: mailController.text,
                              password: passController.text);
                          Navigator.pushNamed(context, '/home');
                        }
                      }).catchError((e) {
                        dissmissDialog(context);
                        showSnackBarError(key: loginKey, msg: e);
                      });
                    },
                    color: Colors.black,
                    textColor: Colors.white,
                    child: Text('SIGN IN'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'You don\'t have account ? Signup',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  validateInputs(String mail, String password) {
    if (mail.isEmpty || password.isEmpty) {
      return false;
    }
    return true;
  }
}
