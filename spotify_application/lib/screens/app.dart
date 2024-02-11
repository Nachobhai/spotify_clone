import 'package:flutter/material.dart';
import 'package:spotify_application/screens/home.dart';
import 'package:spotify_application/screens/search.dart';
import 'package:spotify_application/screens/yourlibrary.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  //data
}

class _MyAppState extends State<MyApp> {
  final Tabs = [Home(), Search(), YourLibrary()];
  int currentTabIndex =0;
  //ui code
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar( 
        currentIndex: currentTabIndex,
                 onTap: (currentIndex){
          print('Current Index is $currentIndex');
          currentTabIndex = currentIndex;
          setState(() { currentTabIndex = currentIndex; });
        },
        selectedLabelStyle: TextStyle(color: Colors.amber),
        backgroundColor: const Color.fromARGB(255, 243, 197, 197),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color:Colors.white),
            label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color:Colors.white), 
            label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined , color:Colors.white), 
            label: 'Your Library'),
      ]),
    );
  }
}