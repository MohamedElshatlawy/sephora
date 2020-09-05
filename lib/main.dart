import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora/provider/search_provider.dart';
import 'package:sephora/ui/auth/register.dart';
import 'package:sephora/ui/home_screen.dart';
import 'package:sephora/ui/inspire_pages/buying_guides_screen.dart';
import 'package:sephora/ui/main1.dart';
import 'package:sephora/ui/splash_screen.dart';

main(List<String> args) {
  runApp(ChangeNotifierProvider.value(
    value: SearchProvider(),
    child: MaterialApp(
        // home: shop(),
        initialRoute: "/",
        routes: {
          "/": (_) => SplashScreen(),
          "/home": (_) => Home(),
          "/buying_guide": (_) => BuyingGuide(),
          "/register": (_) => Register()
        }
        
        ),
  ));
}
