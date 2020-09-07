import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora/provider/search_provider.dart';
import 'package:sephora/provider/user_provider.dart';
import 'package:sephora/ui/auth/register.dart';
import 'package:sephora/ui/home_screen.dart';
import 'package:sephora/ui/inspire_pages/buying_guides_screen.dart';
import 'package:sephora/ui/main1.dart';
import 'package:sephora/ui/splash_screen.dart';

import 'ui/auth/login.dart';

main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(
        value: SearchProvider(),
      ),
      ChangeNotifierProvider.value(
        value: UserProvider(),
      ),
    ],
    child: MaterialApp(
        // home: shop(),
        initialRoute: "/",
        routes: {
          "/": (_) => SplashScreen(),
          "/home": (_) => Home(),
          "/buying_guide": (_) => BuyingGuide(),
          "/register": (_) => Register(),
          "/login": (_) => Login()
        }),
  ));
}
