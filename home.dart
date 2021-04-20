import 'package:first_app/views/split_bill.dart';
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
      body: Container(
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
             Image.network('https://picsum.photos/250?image=9'),

            // Image.asset(
            //   'images/lake.jpg',
            //   width: 600.0,
            //   height: 240.0,
            //   fit: BoxFit.cover,
            // ),
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
            Image.network('https://www.thebalance.com/thmb/9v7p52zHCQ_VQD66mP7CEmaGtM0=/2121x1414/filters:fill(auto,1)/GettyImages-697538059-5b3a474a46e0fb003799c328.jpg'),

          ],
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
        },
      ),
    );
  }
}
