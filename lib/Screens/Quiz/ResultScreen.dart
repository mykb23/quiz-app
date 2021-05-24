import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/Quiz/QuizScreen.dart';

class ResultScreen extends StatelessWidget {
  // const ResultScreen({Key key}) : super(key: key);

  final int score;
  ResultScreen(this.score);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF2D046E),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 90,
            ),
            Center(
              child: Image(
                image: AssetImage("assets/icon-circle.png"),
                width: 300,
                height: 300,
              ),
            ),
            Text(
              "Result",
              style: TextStyle(
                color: Color(0XFFA20CBE),
                fontSize: 35,
              ),
            ),
            Text(
              "$score/10",
              style: TextStyle(
                color: Color(0XFFFFBA00),
                fontSize: 60,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "RESTART",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  color: Color(0XFFFFBA00),
                  textColor: Colors.white,
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QuizScreen()))
                      }),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "EXIT",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  color: Color(0XFF511AA8),
                  textColor: Colors.white,
                  onPressed: () => {
                        //exit the game
                        Navigator.pop(
                          context,
                        )
                      }),
            )
          ],
        ),
      )),
    );
  }
}
