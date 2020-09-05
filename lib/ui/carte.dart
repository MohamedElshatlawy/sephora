import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sephora/ui/widgets/myAppBar.dart';

void main() {

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      home: carte(),
    ),
  );
}
class Number {
  int id;
  String number;

  Number(this.id, this.number);

  static List<Number> getNumber() {
    return <Number>[

      Number(1, '1'),
      Number(2, '2'),
      Number(3, '3'),
      Number(4, '4'),
    ];
  }
}

class carte extends StatefulWidget {

  @override
  _carte createState() => _carte();
}

class _carte extends State<carte> {
  int idButton ;
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
  List<Number> _number = Number.getNumber();
  List<DropdownMenuItem<Number>> _dropdownMenuItemsNumber;
  Number _selectedNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dropdownMenuItemsNumber = buildDropdownMenuItemsNumber(_number);
    _selectedNumber = _dropdownMenuItemsNumber[0].value;
  }

  List<DropdownMenuItem<Number>> buildDropdownMenuItemsNumber(List numbers) {
    List<DropdownMenuItem<Number>> items = List();
    for (Number number in numbers) {
      items.add(
        DropdownMenuItem(
          value: number,
          child: Text(number.number),
        ),
      );
    }
    return items;
  }
  onChangeDropdownItemNumber(Number selectedNumber) {
    setState(() {
      _selectedNumber = selectedNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Color ColorForBack=new Color.fromARGB(231,55, 135, 119);
    //Color BackColorDark=new Color.fromARGB(231,240,252,250);
    double width = MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    double widthButton=(width-21.0)*0.5;
    double heightButton=(height)*0.5;
    double c1=60.0+6.0+height*0.05+10;
    double c2=height-c1-50.0;
    return Scaffold(
        appBar: CustomAppBar(context),
        key: _scaffoldKey,
      
        body:
        new WillPopScope(
          onWillPop: () async {
            Navigator.pop(context);

          },
          child:new SingleChildScrollView(
            //padding: EdgeInsets.only(bottom: 30),
              child:Column(
                children: <Widget>[

                  SizedBox(height: 20,),
                              Card(
                   child:Column(children: [
                     Row(
                       children: [
                         Image.asset("assets/delivery.png",width: 15,height: 15,),
                          Text("You're only \$23.00 away from Free Shipping.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

                       ],
                     ),
                     Divider(),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                     Container(
                       width:width*0.2,
                     height: width*0.3,
                     child:Image.asset("assets/makeup.jpg",width:width*0.2,height:height*0.3,fit: BoxFit.fill,),),
                     Container(
                         width: width*0.5,
                         height: width*0.3,

                         child:  Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("MAKE UP FOR EVER",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                           Text("Matte Velvet Skin High",style: TextStyle(color: Colors.black),),
                           Text("Coverage Multi-Use",style: TextStyle(color: Colors.black),),
                           Text("Concealer",style: TextStyle(color: Colors.black,),),
                           Text("COLOR: 2.3",style: TextStyle(color: HexColor("#e6e6e6"),),),

                         ],
                       )),
                       Container(width:width*0.2,child:Text("\$27.00",style: TextStyle(fontWeight: FontWeight.bold),)),
                     ],),
                     Row(
                       children: [
                         Text("Remove",style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,),
                         SizedBox(width: width*0.1,),
                         Text("QTY:",style: TextStyle(fontWeight: FontWeight.bold),),
                         Directionality(
                             textDirection: TextDirection.rtl,
                             child:DropdownButtonHideUnderline(child:
                             DropdownButton(
                               focusColor: Colors.white,
                               value: _selectedNumber,
                               items: _dropdownMenuItemsNumber,
                               onChanged: onChangeDropdownItemNumber,
                               style: new TextStyle(
                                 color: Colors.black,
                               ),
                               dropdownColor: Colors.white,
                               iconEnabledColor: Colors.black,
                             ))),
                         SizedBox(width: width*0.1,),
                         Row(
                           children: [
                             Image.asset("assets/heart.png",width: 15,height: 15,),

                             Text("MOVE TO LOVES",style: TextStyle(fontWeight: FontWeight.bold),),
                           ],
                         )




                       ],
                     )
                   ],)
                 ),
                  Card(
                    child: Container(child:Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Expanded(child:  RichText(

                            text: TextSpan(
                              text: 'Sign in',
                              style: TextStyle(color: Colors.blue,fontSize: 16), /*defining default style is optional */
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' to see yout Beauty Insider points & redeem your rewards',
                                style: TextStyle(color: Colors.black,fontSize: 16),
                                ),

                              ],
                            ),
                          ),)
                          //Text("Sign in ",style: TextStyle(color: Colors.blue),softWrap: true,),
                          //Text("to see yout Beauty Insider points & redeem your rewards",softWrap: true,),

                        ],
                      )),

                  ),
                  Card(
                      child:Container(

                        child: Row(
                          children: [

                            Text("Add Up to 2 Free Sample(s)"),
                            SizedBox(width: width*0.35,),
                            RotatedBox(
                                quarterTurns: 2,
                                child: IconButton(
                                  icon:Icon(Icons.arrow_back_ios),
                                  // onPressed: (){Navigator.pop(context);}
                                )

                              //  onPressed: null,
                            )

                          ],
                        ),
                      )
                  ),
                  Card(
                      child:Container(

                        child: Row(
                          children: [

                            Text("Add Promo or Reward Code"),
                            SizedBox(width: width*0.35,),
                            RotatedBox(
                                quarterTurns: 2,
                                child: IconButton(
                                  icon:Icon(Icons.arrow_back_ios),
                                  // onPressed: (){Navigator.pop(context);}
                                )

                              //  onPressed: null,
                            )

                          ],
                        ),
                      )
                  ),
                  Card(
                    child:Column(children: [ Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Recommended For You",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],),
                      Container(height: height*0.52,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: width*0.3,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/kvd.jpeg",height: height*0.2,),
                                      Text("KVD VEGAN BEAUTY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),softWrap: true,),
                                      SizedBox(height: 10,),
                                      Text("Dagger Tattoo Liner.."),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Text("\$12.00",style: TextStyle(color: Colors.black),),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(children: [Text("exclusive")]),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/start.png",width: 15,height: 15,),

                                        ],
                                      ),
                                      SizedBox(height: height*0.02,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: HexColor("#ec050f"),


                                          // suffixIcon:
                                          //IconButton(icon: Icon(Icons.search,color: HexColor(TextColorForBack),), onPressed:(){searchdata(controller.text);}),

                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.transparent,width: 1.0),


                                          //  contentPadding: EdgeInsets.only(bottom: 20),

                                        ),
                                        width: width*0.25,
                                        height: height*0.05,
                                        child: Center(child:Text("ADD TO BASKET",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                      )


                                    ],
                                  ),
                                ),


                              ),
                              Container(
                                width: width*0.3,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/kvd.jpeg",height: height*0.2,),
                                      Text("KVD VEGAN BEAUTY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),softWrap: true,),
                                      SizedBox(height: 10,),

                                      Text("Dagger Tattoo Liner.."),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Text("\$12.00",style: TextStyle(color: Colors.black),),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(children: [Text("exclusive")]),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/start.png",width: 15,height: 15,),

                                        ],
                                      ),
                                      SizedBox(height: height*0.02,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: HexColor("#ec050f"),


                                          // suffixIcon:
                                          //IconButton(icon: Icon(Icons.search,color: HexColor(TextColorForBack),), onPressed:(){searchdata(controller.text);}),

                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.transparent,width: 1.0),


                                          //  contentPadding: EdgeInsets.only(bottom: 20),

                                        ),
                                        width: width*0.25,
                                        height: height*0.05,
                                        child: Center(child:Text("ADD TO BASKET",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                      )

                                    ],
                                  ),
                                ),


                              ),
                              Container(
                                width: width*0.3,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/kvd.jpeg",height: height*0.2,),
                                      Text("KVD VEGAN BEAUTY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),softWrap: true,),
                                      SizedBox(height: 10,),

                                      Text("Dagger Tattoo Liner.."),
                                      SizedBox(height: 10,),

                                      Row(
                                        children: [
                                          Text("\$12.00",style: TextStyle(color: Colors.black),),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(children: [Text("exclusive")]),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/start.png",width: 15,height: 15,),

                                        ],
                                      ),
                                      SizedBox(height: height*0.02,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: HexColor("#ec050f"),


                                          // suffixIcon:
                                          //IconButton(icon: Icon(Icons.search,color: HexColor(TextColorForBack),), onPressed:(){searchdata(controller.text);}),

                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.transparent,width: 1.0),


                                          //  contentPadding: EdgeInsets.only(bottom: 20),

                                        ),
                                        width: width*0.25,
                                        height: height*0.05,
                                        child: Center(child:Text("ADD TO BASKET",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                      )

                                    ],
                                  ),
                                ),


                              ),
                              Container(
                                width: width*0.3,
                                child: Card(
                                  child: Column(
                                    children: [
                                      Image.asset("assets/kvd.jpeg",height: height*0.2,),
                                      Text("KVD VEGAN BEAUTY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),softWrap: true,),
                                      SizedBox(height: 10,),

                                      Text("Dagger Tattoo Liner.."),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Text("\$12.00",style: TextStyle(color: Colors.black),),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(children: [Text("exclusive")]),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/startblack.png",width: 15,height: 15,),
                                          Image.asset("assets/start.png",width: 15,height: 15,),

                                        ],
                                      ),
                                      SizedBox(height: height*0.02,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: HexColor("#ec050f"),


                                          // suffixIcon:
                                          //IconButton(icon: Icon(Icons.search,color: HexColor(TextColorForBack),), onPressed:(){searchdata(controller.text);}),

                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(color: Colors.transparent,width: 1.0),


                                          //  contentPadding: EdgeInsets.only(bottom: 20),

                                        ),
                                        width: width*0.25,
                                        height: height*0.05,
                                        child: Center(child:Text("ADD TO BASKET",style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                                      )

                                    ],
                                  ),
                                ),


                              ),

                            ],
                          )),
                    ])
                  ),


                Card(child:Column(  children: [
                  SizedBox(height: 10,),
                  Row(
                   children: [
                     Text("Merchandise Subtotal",style: TextStyle(fontFamily: "arial"),),
                     SizedBox(width: width*0.45,),
                     Text("\$27.00"),

                   ],

                 ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Shipping & Handling",style: TextStyle(fontFamily: "arial"),),
                      SizedBox(width: width*0.5,),
                      Text("\$-.--"),

                    ],

                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Tax",style: TextStyle(fontFamily: "arial"),),
                      Text("(calculated during checkout))",style: TextStyle(fontFamily: "arial",color: HexColor("#e6e6e6")),),

                      SizedBox(width: width*0.3,),
                      Text("\$-.--"),

                    ],

                  ),
                 Divider(thickness: 2,color: Colors.black,),
                  Row(
                    children: [
                      Text("Order Subtotal",style: TextStyle(fontFamily: "arial",fontWeight: FontWeight.bold),),

                      SizedBox(width: width*0.55,),
                      Text("\$27.00"),

                    ],

                  ),
                  Row(
                    children: [
                      Text("or 4 interest-free payments of \$6.75.",style: TextStyle(fontFamily: "arial",fontSize: 10),),
                      Text("klarna.",style: TextStyle(fontFamily: "arial",fontWeight: FontWeight.bold),),

                      Icon(Icons.info_outline,color: Colors.black,),
                    ],

                  ),
                 Divider(),
                 Container(

                     height: height*0.02,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order Subtotal(1 item)",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: width*0.4,),
                      Text("\$27.00",style: TextStyle(fontWeight: FontWeight.bold),),
                    ],

                  )),
                  SizedBox(height: height*0.05,),
                  Container(
                    height: height*0.05,
                    width: width*0.95,
                   // color: Colors.red,
                      decoration: BoxDecoration(
                        color: HexColor("#ec050f"),


                        // suffixIcon:
                        //IconButton(icon: Icon(Icons.search,color: HexColor(TextColorForBack),), onPressed:(){searchdata(controller.text);}),

                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.transparent,width: 1.0),


                        //  contentPadding: EdgeInsets.only(bottom: 20),

                      ),

                   // decoration: BoxDecoration(
                     // borderRadius: BorderRadius.circular(6)
                    //),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text("CHECKOUT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),]),

                  ),
                  SizedBox(height: 10,),

]))

                ],
              )

          ),

        ));

  }
  Future<List>  _fetchData(List list) async {
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

    }print("zaaaa: "+hexColor);
    return int.tryParse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}



