// ignore_for_file: prefer_const_constructors

import 'package:calculator/pages/cal.dart';
import 'package:calculator/pages/contact.dart';
import 'package:calculator/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage()
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;
  final tabs = [HomePage(),CalculatePage(),Contact()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Calculator")),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, 
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_mini_rounded), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_rounded), label: "Calculate"),
            BottomNavigationBarItem(icon: Icon(Icons.contact_page_rounded), label: "Contact")
          ], 
          onTap: (index){
            setState(() {
              print(index);
              _currentIndex = index;
            });
          },
        ),
      );
  }
}
