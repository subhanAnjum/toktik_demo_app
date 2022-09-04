import 'package:flutter/material.dart';
import 'package:toktik_flutter/screens/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //bottom nav bar
  int _selectedIndex = 0;
  //navigating bottom bar
  void _navigateBottomBar(int index){
    setState((){
      _selectedIndex = index;
    });

  }
  //pages
  final List<Widget> _pages = const [
    UserHomePage(),
    Center(child: Text('Search'),),
    Center(child: Text('Add'),),
    Center(child: Text('Inbox'),),
    Center(child: Text('Profile'),),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded),label: 'Inbox'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')
      ],
      ),
    );
  }
}
