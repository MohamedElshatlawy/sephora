import 'package:flutter/material.dart';
import 'package:sephora/ui/widgets/new_list_item.dart';
import 'package:sephora/ui/widgets/recommend_list_item.dart';

import '../cmmon.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('Hi, Beautiful!',style:TextStyle(fontWeight: FontWeight.w700,
            fontSize: 16
            )),
             SizedBox(
              height: 10,
            ),
              Text("""Sign in to ypur sephora account to see your rewards
excusive offers, loves, orders , and more! """,
textAlign: TextAlign.center,
style:TextStyle(fontWeight: FontWeight.bold,
            fontSize: 15
            )),
              SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 200,
              child: RaisedButton(onPressed: (){},
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)
              ),
              textColor: Colors.white,
              child: Text('SIGN IN'),
              ),
            ),
             SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,"/register");
              },
                          child: Text('Create Account',style: TextStyle(
                color: Colors.blue,
              ),),
            ),
              SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.black,
              child: Text("GET FREE SHIPPING ON ALL ORDERS WITH CODE FRESHSHIP,PLUS GET EXTEND RETURNS,SEE TERMS >",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              
            ),
              ),
            ),
              SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'New For You',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  'View All >',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 240,
              child: Scrollbar(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: getImgsPaths().length,
                    separatorBuilder: (ctx, index) => SizedBox(
                          width: 8,
                        ),
                    itemBuilder: (ctx, index) => NewListItem(getImgsPaths()[index])),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recommended For You',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                // Text('View All >',
                //   style: TextStyle(
                //   fontSize: 16,
                //   fontWeight: FontWeight.w400
                // ),
                // )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 270,
              child: Scrollbar(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: getImgsPaths().length,
                    separatorBuilder: (ctx, index) => SizedBox(
                          width: 8,
                        ),
                    itemBuilder: (ctx, index) => RecommendListItem(
                      getImgsPaths()[index]
                    )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Card(
                          child: Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(getImgsPaths()[7],
                  fit: BoxFit.fill,
                  ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
             Card(
                            child: Container(
                height: 300,
                 width: double.infinity,
                child: Image.asset(getImgsPaths()[3],
                  fit: BoxFit.fill,
                  ),
            ),
             ),
            SizedBox(
              height: 15,
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Just Arrived',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                // Text('View All >',
                //   style: TextStyle(
                //   fontSize: 16,
                //   fontWeight: FontWeight.w400
                // ),
                // )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              child: Scrollbar(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: getImgsPaths().length,
                    separatorBuilder: (ctx, index) => SizedBox(
                          width: 8,
                        ),
                    itemBuilder: (ctx, index) => RecommendListItem(
                      getImgsPaths()[index]
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Selling Fast',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                // Text('View All >',
                //   style: TextStyle(
                //   fontSize: 16,
                //   fontWeight: FontWeight.w400
                // ),
                // )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              child: Scrollbar(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount:getImgsPaths().length,
                    separatorBuilder: (ctx, index) => SizedBox(
                          width: 8,
                        ),
                    itemBuilder: (ctx, index) => RecommendListItem(
                      getImgsPaths()[index]
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
