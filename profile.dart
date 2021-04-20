import 'package:first_app/Screens/Welcome/components/palette.dart';
import 'package:first_app/Screens/Welcome/load.dart';
import 'package:first_app/views/home.dart';
import 'package:first_app/views/splitbill.dart';
import 'package:first_app/widgets/rounded_button.dart';
import 'package:first_app/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentTab = 0;
  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CustomUser>(context);
    String email = user.email;
    return Scaffold(
      body: profileView(email),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
          if (_currentTab == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          }
          if (_currentTab == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BillSplitHomePage()),
            );
          }

        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.blue,
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_outlined),
              backgroundColor: Colors.blue,
              title: Text('Split Bill')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_add),
              backgroundColor: Colors.blue,
              title: Text('Groups')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.blue,
              title: Text('Profile')
          ),
        ],


      ),
    );
  }

  Widget profileView(String email) {
    return Column(
      children: <Widget>[
        // Padding(
        //   padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: <Widget>[
        //       Container(
        //         height: 50,
        //         width: 50,
        //         child: Icon(
        //           Icons.arrow_back_ios,
        //           size: 24,
        //           color: Colors.black54,
        //         ),
        //         decoration: BoxDecoration(
        //             border: Border.all(color: Colors.black54),
        //             borderRadius: BorderRadius.all(Radius.circular(10))),
        //       ),
        //       Text(
        //         'Profiles details',
        //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        //       ),
        //       Container(height: 24, width: 24)
        //     ],
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 80, 0, 50),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                child: ClipOval(
                  child: Image.network(
                    'http://i.imgur.com/zL4Krbz.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Positioned(bottom: 1, right: 1 ,child: Container(
              //   height: 40, width: 40,
              // child: Icon(Icons.add_a_photo, color: Colors.white,),
              //   decoration: BoxDecoration(
              //     color: Colors.deepOrange,
              //     borderRadius: BorderRadius.all(Radius.circular(20))
              //   ),
              // ))
            ],
          ),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)])),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Name',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        email,
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Type something about yourself',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
              //   child: Container(
              //     height: 60,
              //     child: Align(
              //       alignment: Alignment.centerLeft,
              //       child: Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Text(
              //           'Phone number',
              //           style: TextStyle(color: Colors.white70),
              //         ),
              //       ),
              //     ),
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.all(Radius.circular(20)),
              //         border: Border.all(width: 1.0, color: Colors.white70)),
              //   ),
              // ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                      child: RoundedButton(
                          text: 'Sign Out',
                          press: () async {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Load()),
                              (route) => false,
                            );
                            await auth.signOut();
                          }
                          // borderRadius: BorderRadius.only(
                          // topLeft: Radius.circular(30),
                          ) //),
                      ),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
