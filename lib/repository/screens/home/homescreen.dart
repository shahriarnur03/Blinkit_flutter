import 'package:blinkit/repository/widgets/status_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFF9D56A),
        toolbarHeight: -11,
        elevation: 0,
      ),
      body: Column(children: [StatusBar()]),
    );
  }
}
