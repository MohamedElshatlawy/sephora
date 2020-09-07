import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora/api/authentication.dart';
import 'package:sephora/api/shared_pref.dart';
import 'package:sephora/provider/user_provider.dart';
import 'package:sephora/ui/widgets/custom_widgets.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

bool rememberMe = true;
bool p1Visibile = false;
bool p2Visible = false;

var nameController = TextEditingController();
var emailController = TextEditingController();
var passController = TextEditingController();
var confirmPassController = TextEditingController();
var regKey = GlobalKey<ScaffoldState>();

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      key: regKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'CREATE ACCOUNT',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      labelText: 'NAME',
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
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
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
                  obscureText: !p1Visibile,
                  controller: passController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            (p1Visibile)
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              p1Visibile = !p1Visibile;
                            });
                          }),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      labelText: 'PASSWORD',
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
                  obscureText: !p2Visible,
                  controller: confirmPassController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            (p2Visible)
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              p2Visible = !p2Visible;
                            });
                          }),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                      labelText: 'CONFIRM PASSWORD',
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      labelStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),

                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Stay signed in',
                      style: TextStyle(color: Colors.black),
                    ),
                    CupertinoSwitch(
                        value: rememberMe,
                        onChanged: (c) {
                          setState(() {
                            rememberMe = c;
                          });
                        })
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                // Container(
                //   width: double.infinity,
                //   height: 2,
                //   color: Colors.grey[400],
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: <Widget>[
                //     Text(
                //       'Use Face ID for sign in',
                //       style: TextStyle(color: Colors.black),
                //     ),
                //     CupertinoSwitch(value: false, onChanged: (c) {})
                //   ],
                // ),
                // SizedBox(
                //   height: 20,
                // ),

                // Container(
                //   width: double.infinity,
                //   height: 2,
                //   color: Colors.grey[400],
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Text(
                //   'Beauty INSIDER',
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       fontStyle: FontStyle.italic),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Text(
                //   'Join now to earn points to redeem rewards. Enter yout birthdate below to receive gifts during your birthday month.',
                //   style: TextStyle(
                //       color: Colors.black, fontStyle: FontStyle.normal),
                // ),
                // SizedBox(
                //   height: 5,
                // ),
                // Row(
                //   children: <Widget>[
                //     Text('Explore benefits',
                //         style: TextStyle(color: Colors.blue)),
                //   ],
                // ),
                // SizedBox(
                //   height: 15,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: <Widget>[
                //     Text(
                //       'Date of birth',
                //       style: TextStyle(color: Colors.black, fontSize: 18),
                //     ),
                //     Container(
                //       width: 140,
                //       child: DropdownButton<String>(
                //           isExpanded: true,
                //           items: [
                //             DropdownMenuItem(
                //               child: Text('Oct, 6 ,1997'),
                //               value: '1',
                //             ),
                //             DropdownMenuItem(
                //               child: Text('Oct, 6 ,1998'),
                //               value: '2',
                //             ),
                //           ],
                //           value: '1',
                //           underline: Container(),
                //           onChanged: (v) {}),
                //     )
                //   ],
                // ),
                // SizedBox(
                //   height: 15,
                // ),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    'By tapping \"Create account\" you agree our Beauty Insider Terms and to automatically receive offers via emai'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () async {
                      // Navigator.pushNamed(context, '/home');
                      var result = validateInput(
                          confPass: confirmPassController.text,
                          mail: emailController.text,
                          name: nameController.text,
                          pass: passController.text);
                      if (result != true) {
                        showSnackBarError(key: regKey, msg: result);
                        return;
                      } else {
                        //register user
                        showLoadingDialog(
                            context: context, text: 'Creating new account...');

                        await signup(
                                name: nameController.text,
                                email: emailController.text,
                                password: passController.text)
                            .then((value) async {
                          if (value == null) {
                            dissmissDialog(context);
                            showSnackBarError(
                                key: regKey, msg: 'Incorrect Mail !');
                          } else {
                            await login(
                                    mail: emailController.text,
                                    password: passController.text)
                                .then((value) {
                              dissmissDialog(context);
                              if (value == null) {
                                showSnackBarError(
                                    key: regKey,
                                    msg: 'Error mail or password !');
                              } else {
                                userProvider.setUser(value);
                                // Add user to shared preference
                                if (rememberMe) {
                                  saveUserSharedPreference(
                                      mail: emailController.text,
                                      password: passController.text);
                                }

                                Navigator.pushNamed(context, '/home');
                              }
                            }).catchError((e) {
                              dissmissDialog(context);
                              showSnackBarError(key: regKey, msg: e);
                            });
                          }
                        }).catchError((e) {
                          dissmissDialog(context);
                          showSnackBarError(key: regKey, msg: e);
                        });
                      }
                    },
                    color: Colors.red[600],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    child: Text('CREATE ACCOUNT'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  validateInput({String name, String mail, String pass, String confPass}) {
    if (name.isEmpty || mail.isEmpty || pass.isEmpty || confPass.isEmpty) {
      return 'Fill all inputs';
    }
    if (pass != confPass) {
      return 'Password not match';
    }
    if (pass.length < 6) {
      return 'Password is too weak';
    }

    return true;
  }
}
