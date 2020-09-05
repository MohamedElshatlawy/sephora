import 'package:flutter/material.dart';
import 'package:sephora/ui/widgets/recommend_list_item.dart';

import '../../cmmon.dart';

class QuizResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Result',
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
 body: Column(
   children: <Widget>[
     Container(
       width: double.infinity,
       height: MediaQuery.of(context).size.height/3-50,
       child: Stack(
         fit: StackFit.expand,
         children: <Widget>[
           Opacity(
             opacity: .8,
             child: Image.asset('assets/found.jpg',fit: BoxFit.fill,)),
               Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("""YOU FOUND IT""",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    
                  ),
                  )
                  ,SizedBox(height: 10,),
                     Text("""Explore just-right-for-you\nfoundations righ here.""",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    
                  ),
                  )
                 ,SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                  //    Navigator.push(context,MaterialPageRoute(builder: (ctx)=>TakeQuizScreen()));
                    },
                                      child: Text("""FIND OTHER FOUNDATIONS >""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                      
                    ),
                    ),
                  )
                 
                ],
              ),
            )
       
         ],
       ),
     )
   
    ,SizedBox(
      height: 15,
    ),
    Expanded(
            child: GridView.builder(
              itemCount: getImgsPaths().length-1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 170 / 270),

                //  childAspectRatio: cardWidth / cardHeight,
                itemBuilder: (ctx, index) => RecommendListItem(
                  getImgsPaths()[index]
                )),)
   ],
 ),
    );
  }
}