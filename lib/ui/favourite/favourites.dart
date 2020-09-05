

import 'package:flutter/material.dart';
import 'package:sephora/ui/favourite/favourite_list_item.dart';
import 'package:sephora/ui/widgets/myAppBar.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(context),
      body: Column(
        children: <Widget>[
          Table(
            border: TableBorder.symmetric(
                inside: BorderSide(color: Colors.grey[300], width: 2),
                outside: BorderSide(color: Colors.grey[300], width: 2)),
            children: [
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add),
                      SizedBox(
                        width: 10,
                      ),
                      Text('ADD')
                    ],
                  ),
                )),
                TableCell(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.file_upload),
                      SizedBox(
                        width: 10,
                      ),
                      Text('SHARE')
                    ],
                  ),
                ))
              ])
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (ctx, index) {
                return FavouriteListItem();
              },
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 15,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
