import 'package:flutter/material.dart';
import 'package:sephora/ui/inspire_pages/quizzes/quiz_item_details.dart';

class CommunityListItem extends StatelessWidget {
  String path;
  CommunityListItem(this.path);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>QuizDetails()));
      },
          child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,

                border:Border.all(
                  color: Colors.grey[300],
                  width: 2
                )
            ),
            child: CircleAvatar(
              radius: 33,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(path),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Main',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
