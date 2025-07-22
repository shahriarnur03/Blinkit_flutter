import 'package:blinkit/repository/widgets/product_card.dart';
import 'package:blinkit/repository/widgets/status_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> productList = [
    {
      "name": "Amul Taaza Toned Fresh Milk",
      "price": 27.0,
      "time": "16 MINS",
      "image": "milkP.png",
    },
    {
      "name": "Potato (Aloo)",
      "price": 37.0,
      "time": "16 MINS",
      "image": "potatoP.png",
    },
    {
      "name": "Hybrid Tomato",
      "price": 37.0,
      "time": "16 MINS",
      "image": "tomatoP.png",
    },
  ];

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: -11,
        backgroundColor: Color(0XFFF9D56A),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatusBar(),
        
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 12),
              child: Image.asset("assets/images/shopping-cart.png"),
            ),
            Center(
              child: Text(
                "Reordering will be easy",
                style: TextStyle(fontSize: 16, fontFamily: 'PoppinsB'),
              ),
            ),
            Center(
              child: Text(
                "Items you order will show up here so you can buy\n them again easily.",
                style: TextStyle(fontSize: 10, fontFamily: 'PoppinsR'),
                textAlign: TextAlign.center,
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(top: 20, left: 18, bottom: 7),
              child: Text(
                "Bestsellers",
                style: TextStyle(fontFamily: 'PoppinsB', fontSize: 16),
              ),
            ),
        
            Container(
              height: 225,
              margin: EdgeInsets.only(left: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final product = productList[index];
                  return ProductCard(
                    image: product['image'],
                    name: product['name'],
                    time: product['time'],
                    price: product['price'] as double,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
