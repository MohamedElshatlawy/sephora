import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sephora/ui/just_arrived/jus_arrived_screen.dart';

import 'carte.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: shop(),
    ),
  );
}

class shop extends StatefulWidget {
  @override
  _shop createState() => _shop();
}

class _shop extends State<shop> with SingleTickerProviderStateMixin {
  int idButton;
  int _currentIndex = 1;
  final _key = UniqueKey();

  List list2;
  var controller = new TextEditingController();
  FocusNode focusNode;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    //Color ColorForBack=new Color.fromARGB(231,55, 135, 119);
    //Color BackColorDark=new Color.fromARGB(231,240,252,250);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double widthButton = (width - 21.0) * 0.5;
    double heightButton = (height) * 0.5;
    double c1 = 60.0 + 6.0 + height * 0.05 + 10;
    double c2 = height - c1 - 50.0;
    return Container(
        color: Colors.white,
        child: new WillPopScope(
          onWillPop: () async {
            Navigator.pop(context);
          },
          child: Column(
            children: <Widget>[
              Container(
                // width: width*0.7,
                decoration: new BoxDecoration(color: Colors.white),
                child: new TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  controller: _controller,
                  tabs: [
                    new Tab(
                      child: Text("Browser", style: TextStyle(fontSize: 12)),
                    ),
                    new Tab(
                      child:
                          Text("Sale & Offers", style: TextStyle(fontSize: 12)),
                    ),
                    new Tab(
                      child: Text("Rewards Bazaar",
                          style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),
              Divider(),
              Expanded(
                child: new TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(children: <Widget>[
                        Container(
                            width: width * 0.9,
                            height: height * 0.1,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.44,
                                    child: Card(
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "brands",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/fragrance.png",
                                          ),
                                        ),
                                      ],
                                    ))),
                                SizedBox(
                                  width: width * 0.015,
                                ),
                                Container(
                                    width: width * 0.44,
                                    child: new Card(

                                        //decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              width: width * 0.2,
                                              child: Text(
                                                "Sephora Collection",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                softWrap: true,
                                              )),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/bathandbody.png",
                                          ),
                                        )
                                      ],
                                    ))),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.1,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.45,
                                    child: Card(
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Makeup",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/makeup.png",
                                          ),
                                        )
                                      ],
                                    ))),
                                Container(
                                    width: width * 0.45,
                                    child: new Card(

                                        //decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Skincare",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/skincare.png",
                                          ),
                                        )
                                      ],
                                    ))),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.1,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.45,
                                    child: Card(
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Hair",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/hair.png",
                                          ),
                                        )
                                      ],
                                    ))),
                                Container(
                                    width: width * 0.45,
                                    child: new Card(

                                        //decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              width: width * 0.3,
                                              child: Text(
                                                "Tools & Brushes",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                softWrap: true,
                                              )),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/toolsandbrushes.png",
                                          ),
                                        )
                                      ],
                                    ))),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.1,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.45,
                                    child: Card(
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Fragrance",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/fragrance.png",
                                          ),
                                        )
                                      ],
                                    ))),
                                Container(
                                    width: width * 0.45,
                                    child: new Card(

                                        //decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              width: width * 0.2,
                                              child: Text(
                                                "Bath & Body",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                softWrap: true,
                                              )),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/bathandbody.png",
                                          ),
                                        )
                                      ],
                                    ))),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.1,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.45,
                                    child: Card(
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Gifts",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/gifts.png",
                                          ),
                                        )
                                      ],
                                    ))),
                                Container(
                                    width: width * 0.45,
                                    child: new Card(

                                        //decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Men",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            softWrap: true,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/men.png",
                                          ),
                                        )
                                      ],
                                    ))),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.1,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.45,
                                    child: Card(
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              width: width * 0.1,
                                              child: Text(
                                                "Mini Size",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                softWrap: true,
                                              )),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/minisize.png",
                                          ),
                                        )
                                      ],
                                    ))),
                                Container(
                                    width: width * 0.45,
                                    child: new Card(

                                        //decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                                        child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                              width: width * 0.2,
                                              child: Text(
                                                "Sale & Offers",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                softWrap: true,
                                              )),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Image.asset(
                                            "assets/saleandoffers.png",
                                          ),
                                        )
                                      ],
                                    ))),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.05,
                            child: Row(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Featured",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.start,
                                  )
                                ])),
                        Container(
                            width: width * 0.9,
                            height: height * 0.05,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (ctx) => JustArrived()));
                                  },
                                  child: Container(
                                      width: width * 0.4,
                                      child: Text(
                                        "Just Arrived",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "arial"),
                                      )),
                                ),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                Text(
                                  "Bestsellers",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "arial"),
                                ),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            child: Row(
                              children: [
                                Container(width: width * 0.4, child: Divider()),
                                SizedBox(width: width * 0.1),
                                Container(width: width * 0.4, child: Divider()),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.05,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.4,
                                    child: Text(
                                      "Clean Beauty",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "arial"),
                                    )),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                Text(
                                  "Exclusives",
                                  style: TextStyle(
                                      color: Colors.black, fontFamily: "arial"),
                                ),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            child: Row(
                              children: [
                                Container(width: width * 0.4, child: Divider()),
                                SizedBox(width: width * 0.1),
                                Container(width: width * 0.4, child: Divider()),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.05,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.4,
                                    child: Text(
                                      "Vegan Beauty",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "arial"),
                                    )),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                Text(
                                  "Gift Cards",
                                  style: TextStyle(
                                      color: Colors.black, fontFamily: "arial"),
                                ),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            child: Row(
                              children: [
                                Container(width: width * 0.4, child: Divider()),
                                SizedBox(width: width * 0.1),
                                Container(width: width * 0.4, child: Divider()),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            height: height * 0.05,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.4,
                                    child: Text(
                                      "Skincare Basics",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "arial"),
                                    )),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                Text(
                                  "Instagram Checkout",
                                  style: TextStyle(
                                      color: Colors.black, fontFamily: "arial"),
                                ),
                              ],
                            )),
                        Container(
                            width: width * 0.9,
                            child: Row(
                              children: [
                                Container(width: width * 0.4, child: Divider()),
                                SizedBox(width: width * 0.1),
                                Container(width: width * 0.4, child: Divider()),
                              ],
                            )),
                      ]),
                    ),
                    new Card(
                      child: new SingleChildScrollView(
                          child: new Column(children: <Widget>[
                        Row(
                          children: [
                            Text(
                              "Sale",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: width * 0.6,
                            ),
                            InkWell(
                              child: Row(children: [
                                Text("View all"),
                                RotatedBox(
                                    quarterTurns: 2,
                                    child: IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      // onPressed: (){Navigator.pop(context);}
                                    )

                                    //  onPressed: null,
                                    )
                              ]),
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Container(
                            height: height * 0.45,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: width * 0.3,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/kvd.jpeg",
                                          height: height * 0.2,
                                        ),
                                        Text(
                                          "KVD VEGAN BEAUTY",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          softWrap: true,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Dagger Tattoo Liner.."),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$21.00",
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            Text(
                                              "\$12.00",
                                              style: TextStyle(
                                                color: HexColor("#ec050f"),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(children: [Text("exclusive")]),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/start.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width * 0.3,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/kvd.jpeg",
                                          height: height * 0.2,
                                        ),
                                        Text(
                                          "KVD VEGAN BEAUTY",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          softWrap: true,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Dagger Tattoo Liner.."),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$21.00",
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            Text(
                                              "\$12.00",
                                              style: TextStyle(
                                                color: HexColor("#ec050f"),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(children: [Text("exclusive")]),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/start.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width * 0.3,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/kvd.jpeg",
                                          height: height * 0.2,
                                        ),
                                        Text(
                                          "KVD VEGAN BEAUTY",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          softWrap: true,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Dagger Tattoo Liner.."),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$21.00",
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            Text(
                                              "\$12.00",
                                              style: TextStyle(
                                                color: HexColor("#ec050f"),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(children: [Text("exclusive")]),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/start.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width * 0.3,
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/kvd.jpeg",
                                          height: height * 0.2,
                                        ),
                                        Text(
                                          "KVD VEGAN BEAUTY",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          softWrap: true,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("Dagger Tattoo Liner.."),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "\$21.00",
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough),
                                            ),
                                            Text(
                                              "\$12.00",
                                              style: TextStyle(
                                                color: HexColor("#ec050f"),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(children: [Text("exclusive")]),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/startblack.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                            Image.asset(
                                              "assets/start.png",
                                              width: 15,
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Card(
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.02,
                              ),
                              Row(children: [
                                Text(
                                  "Beauty Offers",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ]),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Row(children: [
                                Text(
                                  "Free Shipping on All Orders",
                                  style:
                                      TextStyle(fontSize: 18, fontFamily: ""),
                                )
                              ]),
                              Row(children: [
                                Text(
                                    "We're making it easier to shop from home.")
                              ]),
                              Row(children: [
                                Text("No minimum purchase required.")
                              ]),
                              Row(
                                children: [
                                  Text("Use Code"),
                                  Text(
                                    "FREESHIP",
                                    style: TextStyle(
                                        color: HexColor("#ec050f"),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "SHOP NOW",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.arrow_right,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Limited time only. See terms."),
                                  SizedBox(
                                    width: width * 0.3,
                                  ),
                                  Image.asset(
                                    "assets/delivery.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ])),
                    ),
                    Card(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Future<List> _fetchData(List list) async {
    /*final response =
    await http.get(url+"innermenu_notification.php?idbtn="+idButton.toString());
    if (response.statusCode == 200) {
      list = (json.decode(response.body) as List);
      print(url+"innermenu_notification.php?idbtn="+idButton.toString());

      print(list.length);*/
    return list;

    /* } else {
      throw Exception('Failed to load data');
    }*/
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    print("zaaaa: " + hexColor);
    return int.tryParse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
