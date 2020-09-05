import 'package:flutter/material.dart';
import 'package:sephora/ui/widgets/community_list_item.dart';

import '../cmmon.dart';

class BuyingGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey[600],
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'BUYING GUIDES',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.favorite_border,
                size: 28,
                color: Colors.grey[600],
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                size: 28,
                color: Colors.grey[600],
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Makeup',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.pushNamed(context, '/buying_guide');
                  //   },
                  //   child: Text(
                  //     'View All >',
                  //     style: TextStyle(
                  //         fontSize: 16, fontWeight: FontWeight.w400),
                  //   ),
                  // )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 10,
                  runSpacing: 10,
                  children: <Widget>[
                 ...  getMakup()
                  ],
                ),
              )
             ,SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Skincare',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.pushNamed(context, '/buying_guide');
                  //   },
                  //   child: Text(
                  //     'View All >',
                  //     style: TextStyle(
                  //         fontSize: 16, fontWeight: FontWeight.w400),
                  //   ),
                  // )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 10,
                  runSpacing: 10,
                  children: <Widget>[
                   ...getSkinCare()
                  ],
                ),
              )
            
            ],
          ),
        ),
      ),
    );
  }
 getSkinCare(){
    List<Widget> data=[];
     for(int i=0;i<getImgsPaths().length;i++){
       data.add(CommunityListItem(getImgsPaths()[i]));
     }
     return data;
  }
   getMakup(){
    List<Widget> data=[];
     for(int i=0;i<5;i++){
       data.add(CommunityListItem(getImgsPaths()[i]));
     }
     return data;
  }
}
