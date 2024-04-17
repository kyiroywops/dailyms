import 'package:flutter/material.dart';
import 'package:growbusiness/screens/screens/home_page.dart';
import 'package:growbusiness/screens/screens/profile_page.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
     Text('Calendario', textAlign: TextAlign.center), // Calendario
    Text('Calendario', textAlign: TextAlign.center), // Calendario
    Text('Calendario', textAlign: TextAlign.center), // Calendario
    ProfileScreen()
  ];

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 13, 11, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildNavItem(Icons.inventory_rounded, 'Daily', 0),
            _buildNavItem(Icons.inventory, 'Products', 1),
            _buildNavItem(Icons.swap_vert_circle_sharp, 'Sales', 2),
            _buildNavItem(Icons.calendar_view_month_rounded, 'Events', 3),
            _buildNavItem(Icons.person, 'Profile', 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => setState(() => _selectedIndex = index),
      splashColor: Colors.transparent, // Removes ripple effect
      highlightColor: Colors.transparent, // Removes highlight effect
      child: Container(
        width: 60, // Ancho para cada botón de icono
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(icon,
                size: 24,
                color: _selectedIndex == index ? Colors.white : Colors.grey),
            Text(label,
                style: TextStyle(
                    color: _selectedIndex == index ? Colors.white : Colors.grey,
                    fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
