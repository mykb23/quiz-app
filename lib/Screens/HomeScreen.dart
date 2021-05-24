import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/Screens/Quiz/QuizScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarBrightness: Brightness.dark,
    // ));
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
              "Quiz",
              style: TextStyle(
                color: Color(0XFFA20CBE),
                fontSize: 90,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "PLAY",
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
            )
          ],
        ),
      )),
    );
  }
}
