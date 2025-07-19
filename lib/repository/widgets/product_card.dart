import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String time;
  final double price;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.time,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 116,
            width: 96,
            // margin: EdgeInsets.only(left: 10, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage("assets/images/$image"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: -8,
            bottom: 30,

            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                maximumSize: Size(30, 18),
                minimumSize: Size(30, 18),
                side: BorderSide(color: Color(0XFF27AF34)),
                padding: EdgeInsets.zero,
              ),
              child: Text(
                "ADD",
                style: TextStyle(
                  color: Color(0XFF27AF34),
                  fontSize: 8,
                  fontFamily: 'poppinsR',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 19,
            child: SizedBox(
              width: 92,
              child: Text(
                name,
                style: TextStyle(fontFamily: 'poppinsR', fontSize: 8),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  margin: EdgeInsets.only(right: 3),
                  child: Image.asset('assets/images/icon_timer.png'),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontFamily: 'poppinsR',
                    color: Color(0XFF9C9C9C),
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -25,
            child: Row(
              children: [
                SizedBox(
                  height: 15, 
                  width: 15,
                  child: Image.asset('assets/images/money_icon.png')),
                Text(
                  "$price",
                  style: TextStyle(fontFamily: 'poppinsB', fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
