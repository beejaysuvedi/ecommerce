import 'package:ecommerce/home/Order/orders_screen.dart';
import 'package:ecommerce/home/home_screen.dart';
import 'package:ecommerce/home/notification/notification_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});


  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int _currentIndex =0;
  final List<Widget> _pages = [
    HomeScreen(),
    NotificationScreen(),
    OrdersScreen(),
    Text("muji"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notification_add), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
       ],
       selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
       selectedItemColor: Colors.red,
       
       type: BottomNavigationBarType.fixed,
       currentIndex: _currentIndex,
       onTap: (value){
        setState(() {
          _currentIndex = value;
        });
       },

    ),
    );
  }
}