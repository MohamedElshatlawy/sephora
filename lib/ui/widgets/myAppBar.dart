import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sephora/provider/search_provider.dart';
import 'package:sephora/ui/favourite/favourites.dart';
import 'package:sephora/ui/widgets/mySearchDelegate.dart';

import '../carte.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  var parentCtx;
  bool isHome;
  CustomAppBar(this.parentCtx,{this.isHome});
  var data = [
    'Product1',
    'Product1',
    'Product1',
    'Product1',
    'Product1',
    'Product1',
    'Product1',
    'Product1',
  ];
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var searchProvider = Provider.of<SearchProvider>(context);
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 40, bottom: 5, right: 10, left: 10),
      child: Row(
        children: <Widget>[
          (isHome!=true)?
          Container(
            margin: EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios),
            ),
          )
          :Container(),
          Expanded(
            child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  onTap: (){
                    print('aaa');
                    showSearch(context: context, delegate: MySearchDelegate(),
                   
                    );
                  },
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: 0, color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: 0, color: Colors.transparent)),
                      border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: 0, color: Colors.transparent)),
                      filled: true,
                      hintText: 'Search',
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                ),
              ),
          ),
          IconButton(
              icon: Icon(
                Icons.favorite_border,
                size: 22,
                color: Colors.grey[600],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => Favourites()));
              }),
          IconButton(
              icon: Icon(
                Icons.shopping_basket,
                size: 22,
                color: Colors.grey[600],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>carte()));
              })
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
