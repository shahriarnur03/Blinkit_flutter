import 'package:flutter/material.dart';

class ProductType extends StatelessWidget {
  final String image;
  final String pType;

  const ProductType({super.key, required this.image, required this.pType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            height: 78,
            width: 72,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFFD9EBEB),
              image: DecorationImage(image: AssetImage('assets/images/$image'))
            ),
          ),
          Text(pType, textAlign: TextAlign.center,style: TextStyle(
            fontSize: 10,
            fontFamily: 'poppinsR',
          ),)
        ],
      ),
    );
  }
}
