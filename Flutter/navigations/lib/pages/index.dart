import 'package:flutter/material.dart';
import 'package:navigations/pages/about.dart';
import 'package:navigations/pages/contact.dart';
import 'package:navigations/pages/home.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});
  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;
  static const List<Widget> __widgetOptions = [
    HomePage(),
    ContactPage(),
    AboutPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Multiverse Navigator'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline)
          ),
        ]
      ),
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: __widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue.shade200,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded), label: 'About'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_outlined), label: 'Contact')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add_a_photo_rounded),
      ),
    );
  }
}
