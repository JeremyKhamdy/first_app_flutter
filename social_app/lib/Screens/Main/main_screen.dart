import 'package:flutter/material.dart';
import 'package:social_app/Screens/Main/components/body.dart';
import 'package:social_app/Screens/Main/components/home/home.dart';
import 'package:social_app/Screens/Main/components/message/message.dart';
import 'package:social_app/Screens/Main/components/search/search.dart';
import 'package:social_app/constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;
  String currentLabel;
  List _labelOptions = [
    'Home',
    'Search',
    'Message',
  ];
  List <Widget> _widgetOptions = <Widget>[
    Home(text: 'Homes',),
    Search(),
    Message()
  ];

  void onItemTap(int index){
    setState(() {
      currentIndex = index;
      currentLabel = _labelOptions[index];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new Icon(Icons.menu, color: kPrimaryColor,),
        backgroundColor: Colors.white,
      ),
      body: Body(content: _widgetOptions.elementAt(currentIndex),),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        fixedColor: kPrimaryColor,
        currentIndex: currentIndex,

        backgroundColor: Colors.white,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: kPrimaryColor,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: kPrimaryColor,),
              label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, color: kPrimaryColor,),
              label: 'Message',
          ),
        ],
        onTap: onItemTap,
      ),
    );
  }
}
