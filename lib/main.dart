import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "productsans"),
      home: HomeScreen(),
    );
  }
}
