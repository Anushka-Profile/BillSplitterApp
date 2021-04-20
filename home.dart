import 'package:first_app/views/profile.dart';
import 'package:first_app/views/splitbill.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyMoney'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 20.0,right:120.0)),
              Text(
                "Welcome to MyMoney!",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Create New Group",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 30.0,
              ),
               // Image.network('https://picsum.photos/250?image=9'),

              // Image.asset(
              //     Image provider: AssetImage(bundle: null, name: "images/p1.jpg"),
              //
              //   width: 600.0,
              //   height: 240.0,
              //   fit: BoxFit.cover,
              // ),
              Image(image: AssetImage('assets/images/p1.jpg')),

              SizedBox(
                height: 30.0,
              ),
              Text(
                "Split in an existing Group",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              // Image.network('https://www.thebalance.com/thmb/9v7p52zHCQ_VQD66mP7CEmaGtM0=/2121x1414/filters:fill(auto,1)/GettyImages-697538059-5b3a474a46e0fb003799c328.jpg'),
              Image(image: AssetImage('assets/images/p2.jpg')),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
          if (_currentIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Home()
              ),
            );
          }
          if (_currentIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BillSplitHomePage()
              ),
            );
          }
          if (_currentIndex == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfileScreen()
              ),
            );
          }
        },
      ),
    );
  }
}
