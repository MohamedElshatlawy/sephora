import 'package:flutter/material.dart';

class NewListItem extends StatelessWidget {
  String path;
  NewListItem(this.path);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
          child: Container(
        height: 240,
        width: 200,
      
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                //color: Colors.red,
                child: Image.asset(path,
                fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 5),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5,),
                      Row(
                        children: <Widget>[
                          Text(
                            'Come in store to save !',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting  ',
                              textAlign: TextAlign.start,
                              
                              style: TextStyle(
                                color: Colors.grey,
                                  fontWeight: FontWeight.w600, fontSize: 10),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
