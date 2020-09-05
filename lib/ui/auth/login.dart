import 'package:flutter/material.dart';
import 'package:sephora/ui/widgets/myAppBar.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset('assets/makeup.webp',scale: 4,),
                Text(
                  'You have to signin to see this page.',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  """Sign in to view all favourite items in
                 the love list""",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            height: 50,
            width: double.infinity,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              onPressed: () {},
              color: Colors.black,
              textColor: Colors.white,
              child: Text('SIGN IN'),
            ),
          ),
        )
      ],
    );
  }
}
