import 'package:flutter/material.dart';
import 'package:sephora/ui/inspire_pages/quizzes/quizzes_screen.dart';

import 'package:sephora/ui/widgets/community_list_item.dart';

import '../cmmon.dart';

class InspireTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
             Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Quizzes',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (ctx)=>Quizzes()));
                        },
                        child: Text(
                          'View All >',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: getImgsPaths().length,
                        separatorBuilder: (ctx, index) => SizedBox(
                              width: 8,
                            ),
                        itemBuilder: (ctx, index) => CommunityListItem(getImgsPaths()[index])),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
         
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Buying Guides',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/buying_guide');
                        },
                        child: Text(
                          'View All >',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount:  getImgsPaths().length,
                        separatorBuilder: (ctx, index) => SizedBox(
                              width: 8,
                            ),
                        itemBuilder: (ctx, index) => CommunityListItem(
                           getImgsPaths()[index]
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
