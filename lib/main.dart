import 'package:flutter/material.dart';
import 'package:recipe_manager/pages/category_page.dart';
import 'package:recipe_manager/pages/home_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipe App',
      theme: ThemeData(
        primaryColor: Color(0xFF5ea17f),
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//whenever the app is clicked the state should change
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //creating list of widgets
  List<Widget> pages = <Widget>[
    HomePage(),
    const CategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFfafafa),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined), label: 'Category'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outlined), label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: 'Profile'),
          ],
          unselectedItemColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).primaryColor,
          iconSize: 30,
          currentIndex: selectedIndex, // set the current index of the item
          onTap: onItemTapped,
        ),
      ),
    );
  }
}
