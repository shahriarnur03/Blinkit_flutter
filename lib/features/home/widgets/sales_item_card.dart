import 'package:flutter/material.dart';

class SalesItemCard extends StatelessWidget {
  final String text;
  final String img;

  const SalesItemCard({super.key, required this.text, required this.img});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 2),
      // height: 108,
      width: 90,
      margin: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Color(0XFFEAD3D3),

        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: 10, fontFamily: 'poppinsB' ),), 
          Image.asset("assets/images/$img")],
      ),
    );
  }
}
