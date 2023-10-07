import 'package:flutter/material.dart';

import 'Home/HomeScreen.dart';
import 'MyTheme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routesName,
      routes: {HomeScreen.routesName: (context) => HomeScreen()}, theme:MyTheme.lightTheme,);
  }
}
