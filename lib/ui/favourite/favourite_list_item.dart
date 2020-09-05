import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FavouriteListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Expanded(flex: 3, child: Image.asset('assets/img.png')),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Remove'),
                    color: Colors.white,
                    textColor: Colors.blue,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex:3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'One/SIZE BY PACKET',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '19 \$',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: <Widget>[
                              Text(
                                'Point made/24h',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: <Widget>[
                              Text(
                                'COLOR: GREY',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                            SizedBox(height: 8,),
                          Row(
                            children: <Widget>[
                              SmoothStarRating(
                                starCount: 5,
                                color: Colors.black,
                                borderColor: Colors.black,
                                rating: 3,
                                size: 15,
                              ),
                              Text(
                                '(48',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: <Widget>[
                          OutlineButton(
                            onPressed: () {},
                            borderSide: BorderSide(color: Colors.black),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            textColor: Colors.black,
                            child: Text('BUY NOW'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RaisedButton(
                            onPressed: () {},
                            color: Colors.red[700],
                            textColor: Colors.white,
                            child: Text('ADD TO BASKET'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          )
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
