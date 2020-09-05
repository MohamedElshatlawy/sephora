import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sephora/constants/colors..dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 4), onDoneLoading);
  }

  void onDoneLoading(){
   Navigator.pushReplacementNamed(context, "/home");
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
        child: Image.asset('assets/im/logo.png',scale: 8,),
      ),
    );
  }
}