import 'package:flutter/material.dart';
import 'package:masmas_food_delivery/module/home/cart.dart';
import 'package:masmas_food_delivery/module/home/chat.dart';
import 'package:masmas_food_delivery/module/home_screen.dart';
import 'package:masmas_food_delivery/module/profile/page/profile.dart';

class MyNavbar extends StatefulWidget {
  const MyNavbar({Key? key}) : super(key: key);

  @override
  State<MyNavbar> createState() => _MyNavbarState();
}

class _MyNavbarState extends State<MyNavbar> {
  int? selectedIndex = 0;

  final List<Widget> _class = [
    HomeScreen(),
    const ProfilePage(),
    const CartScreen(),
    const ChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _class.elementAt(selectedIndex!),
      // bottomNavigationBar: Container(
      //   width: MediaQuery.of(context).size.width,
      //   decoration: const BoxDecoration(
      //     color: Color(0xffFEFEFF),
      //     boxShadow: [
      //       // BoxShadow(
      //       //   blurRadius: 0,
      //       //   spreadRadius: 1,
      //       //   color: Colors.grey.withOpacity(0.1),
      //       //   offset: const Offset(0, 0),
      //       // )
      //     ],
      //     borderRadius: BorderRadius.all(
      //       Radius.circular(22),
      //     ),
      //   ),
      //   margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      //   child: BottomNavigationBar(
      //       currentIndex: selectedIndex!,
      //       selectedItemColor: const Color(0xff53E88B),
      //       onTap: _onItemTapped,
      //       selectedLabelStyle: const TextStyle(
      //           color: Color(0xff53E88B), fontWeight: FontWeight.w500),
      //       unselectedItemColor: Colors.black,
      //       items: const [
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'Home',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'Profile',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'Cart',
      //         ),
      //         BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //           label: 'Chart',
      //         ),
      //       ]),
    );
  }
}
