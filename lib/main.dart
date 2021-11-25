import 'package:airbnb_clone/inbox.dart';
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
  int _pageIndex = 0;
  late PageController _pageController;
  final List<Widget> _pages = <Widget>[const InboxPage(), const ProfilePage()];

  void onPageChanged(int page) {
    setState(() {
      _pageIndex = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  void onTabTapped(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, color: Colors.black87);
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
        currentIndex: _pageIndex,
        unselectedItemColor: optionStyle.color,
        selectedItemColor: Colors.pinkAccent,
        onTap: onTabTapped,
      ),
      body: PageView(
        children: _pages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }
}
