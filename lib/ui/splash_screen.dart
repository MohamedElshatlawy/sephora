import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora/api/authentication.dart';
import 'package:sephora/api/shared_pref.dart';
import 'package:sephora/constants/colors..dart';
import 'package:sephora/provider/user_provider.dart';
import 'package:sephora/ui/widgets/custom_widgets.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 2), onDoneLoading);
  }

  void onDoneLoading() {
    var userProvider = Provider.of<UserProvider>(context, listen: false);
    //Get user sharedPref
    getUserSharedPreference().then((value) async {
      print(value);
      if (value == null) {
        Navigator.pushReplacementNamed(context, "/login");
      } else {
        // get userData
        String email = value.keys.toList().first;
        String password = value.values.toList().first;

        //Login

        showLoadingDialog(context: context, text: 'Signing in...');
        await login(mail: email, password: password).then((value) {
          dissmissDialog(context);
          if (value == null) {
            // showSnackBarError(
            //     key: loginKey, msg: 'Error mail or password !');
          } else {
            userProvider.setUser(value);
            //Add user to shared preference

            Navigator.pushNamed(context, '/home');
          }
        }).catchError((e) {
          dissmissDialog(context);
          // showSnackBarError(key: loginKey, msg: e);
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blackColor,
      body: Center(
        // child: Text('S E P H O R A',style:TextStyle(
        //   color: Colors.white,
        //   fontSize: 26,
        //   fontWeight: FontWeight.w600
        // )),
        child: Image.asset(
          'assets/im/logo.png',
          scale: 8,
        ),
      ),
    );
  }
}
