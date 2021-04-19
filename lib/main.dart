import 'package:my_money_app/register.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_money_app/models/authentication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Authentication(),
        )
      ],
      child: MaterialApp(
        title: 'ParQuick Admin App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RegisterScreen(),
        debugShowCheckedModeBanner: false,
      ),

    );
  }
}

