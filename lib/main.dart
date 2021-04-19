import 'package:my_money_app/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:my_money_app/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'MyMoney-Bill Splitter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RegisterScreen(),
        debugShowCheckedModeBanner: false,
      );
  }
}

