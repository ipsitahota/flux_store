import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'tabs.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ShopTab(),
    SearchTab(),
    CartTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get screen size
    Size screenSize = MediaQuery.of(context).size;

    // Calculate preferred size for AppBar with additional top padding
    double appBarHeight = screenSize.height * 0.1; // Example: 10% of screen height

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight*0.8),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true, // Center aligns the title text
          toolbarHeight: appBarHeight, // Set the toolbar height to match preferredSize
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/icon.png', 
                width: screenSize.width *0.09, 
                height: screenSize.height *0.09,
              ),
              SizedBox(width: screenSize.width*0.02), // Adjust the space between the icon and title text as needed
              Text('Fluxstore',style: TextStyle(color: Colors.black54),),
            ],
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
