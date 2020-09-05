import 'package:flutter/material.dart';
import 'package:sephora/ui/inspire_pages/quizzes/quiz_result.dart';

class TakeQuizScreen extends StatefulWidget {
  @override
  _TakeQuizScreenState createState() => _TakeQuizScreenState();
}

class _TakeQuizScreenState extends State<TakeQuizScreen> {
  int quizSelectedIndex = 0;
  Map<String,List> quizzes = {
    "What benefits matters most to you?": [
      """Clean products, Feel-good\nIngredients only""",
      "Sun protection, SPF always.",
      "No preference. I'm cool with whatever"
    ],
    "How much coverage are you craving?": [
      "Full let's cover it all.",
      """Medium.Hiding some\nminors blemishes.""",
      "Light a littele tint is perfect"
    ],
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Foundation Finder',
                        style: TextStyle(color: Colors.white, fontSize: 15,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
                Padding(

                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8))),
                          height: 8,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color:
                              (quizSelectedIndex == 1 || quizSelectedIndex == 2)
                                  ? Colors.white
                                  : Colors.grey,
                          height: 8,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: (quizSelectedIndex == 2)
                                  ? Colors.white
                                  : Colors.grey,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8))),
                          height: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Expanded(
              child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'assets/found.jpg',
                fit: BoxFit.fill,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(25),
                  child: Text(
                    quizzes.keys.toList()[quizSelectedIndex].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
              ,Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                   children: quizzes[quizzes.keys.elementAt(quizSelectedIndex)]
                   .map((e) =>InkWell(
                     onTap: (){
                       if(quizSelectedIndex==1){
                         Navigator.push(context,MaterialPageRoute(builder: (ctx)=>QuizResult()));
                       }
                       setState(() {
                         quizSelectedIndex=1;
                         setState(() {
                           
                         });
                       });
                     },
                                        child: Card(
                       child: Container(
                        
                         width: MediaQuery.of(context).size.width*.85,
                         height: 150,
                         child: Center(
                           child: Text(e,
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 15,
                             fontWeight: FontWeight.bold
                           ),
                           ),
                         ),
                       ),
                     ),
                   ) ).toList()
                    ,
                  ),
                ),
              )
            ],
          ))
        ],
      )),
    );
  }
}
