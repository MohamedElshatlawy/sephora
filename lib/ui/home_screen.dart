import 'package:flutter/material.dart';
import 'package:sephora/constants/myicons.dart';
import 'package:sephora/ui/home_tabs/home.dart';
import 'package:sephora/ui/home_tabs/inspire.dart';
import 'package:sephora/ui/home_tabs/profile.dart';
import 'package:sephora/ui/home_tabs/shops.dart';
import 'package:sephora/ui/main1.dart';

import 'auth/login.dart';
import 'widgets/myAppBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedBottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: CustomAppBar(context,
        isHome: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.white,
          currentIndex: selectedBottomIndex,

          onTap: (i) {
            setState(() {
              selectedBottomIndex = i;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                activeIcon: Image.asset(
                  MyIcons.HOME_ICON,
                  scale: 3,
                  color: Colors.black,
                ),
                icon: Image.asset(
                  MyIcons.HOME_ICON,
                  scale: 3,
                ),
                title: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                activeIcon: Image.asset(
                  MyIcons.SHOP_ICON,
                  scale: 3,
                  color: Colors.black,
                ),
                icon: Image.asset(
                  MyIcons.SHOP_ICON,
                  scale: 3,
                  color: Colors.black,
                ),
                title: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Shop',
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                activeIcon: Image.asset(
                  MyIcons.PROFILE_ICON,
                  scale: 3,
                  color: Colors.black,
                ),
                icon: Image.asset(
                  MyIcons.PROFILE_ICON,
                  scale: 3,
                ),
                title: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Profile',
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                activeIcon: Image.asset(
                  MyIcons.INSPIRE_ICON,
                  scale: 3,
                  color: Colors.black,
                ),
                icon: Image.asset(
                  MyIcons.INSPIRE_ICON,
                  scale: 3,
                ),
                title: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    'Inspire',
                    style: TextStyle(color: Colors.black),
                  ),
                ))
          ],
          //

          // showUnselectedLabels: true,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: (selectedBottomIndex == 0) 
                    ? HomeTab()
                    : (selectedBottomIndex == 1)
                        ? shop()
                        : (selectedBottomIndex == 2)
                            ? ProfileTab()
                            : InspireTab(),
              ),
            ),
          ],
        ));
  }
}
