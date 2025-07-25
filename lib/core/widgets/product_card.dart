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
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          width: 96,
          height: 250, // Total height remains same
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image container (unchanged)
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 116,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/$image"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    bottom: -7,
                    child: SizedBox(
                      height: 18, 
                      width:25,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          side: BorderSide(color: Color(0XFF27AF34))
                        ),
                        child: Text("ADD", style: TextStyle(fontSize: 8, fontFamily: 'poppins', color: Color(0XFF27AF34))),
                      ),
                    ),
                  ),
                ],
              ),
              // Name section with fixed space below
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Name text with flexible height
                  Container(
                    margin: EdgeInsets.only(top: 7),
                    height: 32, // Fixed height for max 2 lines
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontFamily: 'poppinsR',
                          fontSize: 8,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2), // Fixed space below name
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/icon_timer.png',
                        width: 15,
                        height: 15,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        time,
                        style: const TextStyle(
                          fontFamily: 'poppinsR',
                          color: Color(0xFF9C9C9C),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/money_icon.png',
                          width: 15,
                          height: 15,
                        ),
                        Text(
                          price.toStringAsFixed(
                            price.truncateToDouble() == price ? 0 : 1,
                          ),
                          style: const TextStyle(
                            fontFamily: 'poppinsB',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
