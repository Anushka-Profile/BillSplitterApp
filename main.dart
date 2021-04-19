import 'package:firebase_core/firebase_core.dart';
// import 'package:first_app/Screens/Welcome/welcome_screen.dart';
import 'package:first_app/auth.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Screens/Welcome/load.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(
          primaryColor: Color(0xFF0D47A1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Anton',
        ),
        home: Load(),
        // onGenerateRoute: null,
      ),
    );
  }
}
