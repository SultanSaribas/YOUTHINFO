import 'package:flutter/material.dart';
import 'package:youth_info/view/esc.dart';
import 'package:youth_info/view/workers_exchange.dart';
import 'package:youth_info/view/youth_exchange.dart';
import 'package:youth_info/view/customwidgets/reusable_card.dart';

class EuropeSubHome extends StatelessWidget {
  const EuropeSubHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Europe SubHomePage'),
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Color(0xcc5ac18e),
      body: ListView(
        children: [
          ReusableCard(
            title: Text(
              'Gençlik Çalışan Değişimi',
              style: myTextStyle,
            ),
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkersExchange()),
              );
            },
          ),
          ReusableCard(
            title: Text(
              'Gençlik Değişimi',
              style: myTextStyle,
            ),
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => YouthExchange()),
              );
            },
          ),
          ReusableCard(
            title: Text(
              'Avrupa Gönüllülük Birlikleri (ESC)',
              style: myTextStyle,
            ),
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ESC()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Forum'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'Profile'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber,
      onTap: _onItemTapped,
    );
  }
}
