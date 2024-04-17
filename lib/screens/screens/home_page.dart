import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo.png', // Reemplaza con la ruta de tu logo.
                    height: 50, // Ajusta la altura según sea necesario.
                  ),
              
                ],
              ),
            ),

      
          Padding(
            padding: const EdgeInsets.all(30.0),
            
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('Daily activities', style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Geologia',
                fontWeight: FontWeight.w800,
                
                
                
                ),),
            ),
          ),
          ],

        ),

      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
