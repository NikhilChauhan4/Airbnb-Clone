import 'package:airbnb_clone/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AirbnbApp());
}

class AirbnbApp extends StatelessWidget {
  const AirbnbApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Airbnb',
        primarySwatch: Colors.blue,
      ),
      home: const AirbnbHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class AirbnbHomePage extends StatefulWidget {
  const AirbnbHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AirbnbHomePage> createState() => _BottomNavStatefulWidgetState();
}

class _BottomNavStatefulWidgetState extends State<AirbnbHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30, color: Colors.black87);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Explore',
      style: optionStyle,
    ),
    Text(
      'Wishlists',
      style: optionStyle,
    ),
    Text(
      'Trips',
      style: optionStyle,
    ),
    Text(
      'Inbox',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    )
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
        title: const Text("Airbnb Clone"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: 'Home', icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
              label: 'Wishlists', icon: Icon(Icons.favorite_outline)),
          BottomNavigationBarItem(
              label: 'Trips', icon: Icon(Icons.messenger_outline)),
          BottomNavigationBarItem(
              label: 'Inbox', icon: Icon(Icons.settings_outlined)),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.person_outline)),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: optionStyle.color,
        selectedItemColor: Colors.pinkAccent,
        onTap: _onItemTapped,
      ),
      body: Navigator(
        onGenerateRoute: (profile) {
          Widget page = const ProfilePage();
          if (profile.name == 'Profile') page = ProfilePage();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}
