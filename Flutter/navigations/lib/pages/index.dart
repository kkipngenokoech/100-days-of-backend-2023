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
                  onPressed: () {
                    // _openPageAbout{
                    //   context: context,
                    //   fullScreenDialog: true,
                    // },
                  },
                  icon: const Icon(Icons.info_outline)),
            ]),
        body:  SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: __widgetOptions.elementAt(_selectedIndex),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline_rounded), label: 'About'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page_outlined), label: 'Contact')
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}
