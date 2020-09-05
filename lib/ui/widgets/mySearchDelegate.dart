import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate{
  
  @override
  List<Widget> buildActions(BuildContext context) {
      // TODO: implement buildActions
      return [
        Center(
          child: InkWell(
            onTap: (){
               Navigator.pop(context);
            },
            child: Text('Cancel',style: TextStyle(
              fontSize: 15
            ),),
          ),
        ),
        SizedBox(width: 10,)
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      // TODO: implement buildLeading
    return IconButton(icon: Icon(Icons.search), onPressed: (){
     
    });
    }
  
    @override
    Widget buildResults(BuildContext context) {
      // TODO: implement buildResults
      throw UnimplementedError();
    }
  var data=[
    'fenty beauty',
    'first aid beauty',
    'marc jacobs beauty',
    "FENTY",
    
    
  ];
    @override
    Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
           
            Row(
              children: <Widget>[
                Text('SUGGESTIONS',style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
           SizedBox(height: 10,),
            Divider(),
           
            Expanded(
                      child: ListView.separated(
                        
                itemCount: data.length,
                itemBuilder: (ctx,index)=>ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                title:(index!=data.length-1)? Text(data[index]):
                RichText(
                
                  text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: data[index]+" ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none
                      )
                    ),
                    TextSpan(
                      text: "BEAUTY ",
                      style: TextStyle(fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 16,
                       decoration: TextDecoration.none
                      )
                    ),
                    TextSpan(
                      text: "By Rihanna",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none
                      )
                    ),
                  ]
                ))
                ,
              ), separatorBuilder: (BuildContext context, int index) { 
                return Divider();
               },),
            ),
          ],
        ),
      ),
    )
    ;
  }

}