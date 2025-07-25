import 'package:blinkit/cart/screens/cartscreen.dart';
import 'package:blinkit/category/screens/categoryscreen.dart';
import 'package:blinkit/home/screens/homescreen.dart';
import 'package:blinkit/core/helpers/uihelper.dart';
import 'package:blinkit/print/screens/print_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'home_icon.png'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'shoppingbag _icon.png'),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'category_icon.png'),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.CustomImage(img: 'printer_icon.png'),
            label: "Print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
