import 'package:flutter/material.dart';
import 'package:sephora/ui/widgets/recommend_list_item.dart';

import '../cmmon.dart';

class JustArrived extends StatefulWidget {
  @override
  _JustArrivedState createState() => _JustArrivedState();
}

class _JustArrivedState extends State<JustArrived> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'JUST ARRIVED',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {
                // Navigator.pop(context);
              }),
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (ctx) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8)),
                            child: Scrollbar(
                                                          child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 8),
                                     decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)
                                     ),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              height: 50,
                                              child: Stack(
                                                fit: StackFit.expand,
                                                children: <Widget>[
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Icon(
                                                      Icons.check,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Center(child: Text('View All'))
                                                ],
                                              ),
                                            ),
                                            Divider(),
                                            Container(
                                              height: 50,
                                              child: Stack(
                                                fit: StackFit.expand,
                                                children: <Widget>[
                                                  // Align(
                                                  //   alignment: Alignment.centerLeft,
                                                  //   child: Icon(Icons.check,color: Colors.black,),
                                                  // ),
                                                  Center(child: Text('Men'))
                                                ],
                                              ),
                                            ),
                                            Divider(),
                                            Container(
                                              height: 50,
                                              child: Stack(
                                                fit: StackFit.expand,
                                                children: <Widget>[
                                                  // Align(
                                                  //   alignment: Alignment.centerLeft,
                                                  //   child: Icon(Icons.check,color: Colors.black,),
                                                  // ),
                                                  Center(child: Text('Mini size'))
                                                ],
                                              ),
                                            ),
                                            Divider(),
                                            Container(
                                              height: 50,
                                              child: Stack(
                                                fit: StackFit.expand,
                                                children: <Widget>[
                                                  // Align(
                                                  //   alignment: Alignment.centerLeft,
                                                  //   child: Icon(Icons.check,color: Colors.black,),
                                                  // ),
                                                  Center(child: Text('Hair'))
                                                ],
                                              ),
                                            ),
                                            Divider(),
                                            Container(
                                              height: 50,
                                              child: Stack(
                                                fit: StackFit.expand,
                                                children: <Widget>[
                                                  // Align(
                                                  //   alignment: Alignment.centerLeft,
                                                  //   child: Icon(Icons.check,color: Colors.black,),
                                                  // ),
                                                  Center(child: Text('Skinny'))
                                                ],
                                              ),
                                            ),
                                            Divider(),
                                            Container(
                                              height: 50,
                                              child: Stack(
                                                fit: StackFit.expand,
                                                children: <Widget>[
                                                  // Align(
                                                  //   alignment: Alignment.centerLeft,
                                                  //   child: Icon(Icons.check,color: Colors.black,),
                                                  // ),
                                                  Center(child: Text('Gifts'))
                                                ],
                                              ),
                                            ),
                                            Divider(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 50,
                                    width: double.infinity,
                                    child: RaisedButton(onPressed: (){},
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    textColor: Colors.black,
                                    child: Text('Cancel'),
                                    ),
                                  )
                                 ,SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ));
                },
                color: Colors.white,
                textColor: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('View All'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 170 / 270),

                //  childAspectRatio: cardWidth / cardHeight,
                itemBuilder: (ctx, index) => RecommendListItem(
                  getImgsPaths()[index]
                ),
                itemCount: getImgsPaths().length-1,
                ),
          )
        ],
      ),
    );
  }
}
