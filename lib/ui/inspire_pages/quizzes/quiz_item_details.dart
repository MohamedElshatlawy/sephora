import 'package:flutter/material.dart';
import 'package:sephora/ui/inspire_pages/quizzes/take_quizz_screen.dart';

class QuizDetails extends StatelessWidget {
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
          'Foundation',
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
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Opacity(
              opacity: .8,
                          child: Image.asset('assets/found.jpg',
              
              fit: BoxFit.fill,
              ),
            )

            ,Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("""FOUNDATION\nFINDER""",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    
                  ),
                  )
                  ,SizedBox(height: 10,),
                     Text("""You are just a few clicks away from\nfinding a new foundation you will love.""",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    
                  ),
                  )
                 ,SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (ctx)=>TakeQuizScreen()));
                    },
                                      child: Text("""TAKE THE QUIZ >""",
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
      ),
    );
  }
}