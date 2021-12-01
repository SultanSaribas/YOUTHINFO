import 'package:flutter/material.dart';
import 'package:youth_info/view/HomePage.dart';
import 'package:youth_info/view/ProfilePage.dart';
import 'package:youth_info/view/europe_subhomepage.dart';



class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  PageController _controller = PageController(initialPage: 0);

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _controller.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
           HomePage(),
          EuropeSubHome(),
           ProfilePage(),
        ],
        onPageChanged: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Homepage",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: "Forum",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink[700],
        onTap: _onItemTapped,
      ),
    );
  }
}