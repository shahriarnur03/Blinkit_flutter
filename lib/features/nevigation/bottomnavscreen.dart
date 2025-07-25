import 'package:blinkit/features/cart/screens/cartscreen.dart';
import 'package:blinkit/features/category/screens/categoryscreen.dart';
import 'package:blinkit/features/home/screens/homescreen.dart';
import 'package:blinkit/core/helpers/uihelper.dart';
import 'package:blinkit/features/print/screens/print_screen.dart';
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
          // 👇 Home tab with indicator
          BottomNavigationBarItem(
            icon: Column(
              children: [
                // ✅ Add black line only if currentIndex is 0 (selected)
                currentIndex == 0
                    ? Container(
                        height: 2.5,
                        width: 35,
                        color: Colors.black,
                        margin: const EdgeInsets.only(bottom: 4),
                      )
                    : const SizedBox(height: 6), // same spacing when not selected
                Uihelper.CustomImage(img: 'home_icon.png'),
              ],
            ),
            label: "Home",
          ),

          // 👇 Cart tab with indicator
          BottomNavigationBarItem(
            icon: Column(
              children: [
                currentIndex == 1
                    ? Container(
                        height: 2.5,
                        width: 35,
                        color: Colors.black,
                        margin: const EdgeInsets.only(bottom: 4),
                      )
                    : const SizedBox(height: 6),
                Uihelper.CustomImage(img: 'shoppingbag _icon.png'),
              ],
            ),
            label: "Cart",
          ),

          // 👇 Categories tab with indicator
          BottomNavigationBarItem(
            icon: Column(
              children: [
                currentIndex == 2
                    ? Container(
                        height: 2.5,
                        width: 35,
                        color: Colors.black,
                        margin: const EdgeInsets.only(bottom: 4),
                      )
                    : const SizedBox(height: 6),
                Uihelper.CustomImage(img: 'category_icon.png'),
              ],
            ),
            label: "Categories",
          ),

          // 👇 Print tab with indicator
          BottomNavigationBarItem(
            icon: Column(
              children: [
                currentIndex == 3
                    ? Container(
                        height: 2.5,
                        width: 35,
                        color: Colors.black,
                        margin: const EdgeInsets.only(bottom: 4),
                      )
                    : const SizedBox(height: 6),
                Uihelper.CustomImage(img: 'printer_icon.png'),
              ],
            ),
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
