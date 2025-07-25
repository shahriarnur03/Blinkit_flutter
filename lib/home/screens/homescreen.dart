import 'package:blinkit/category/widgets/category_list.dart';
import 'package:blinkit/core/widgets/product_card.dart';
import 'package:blinkit/home/widgets/sales_item_card.dart';
import 'package:blinkit/core/widgets/status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> saleItems = [
    {"title": "Lights, Diyas\n& Candles", "image": "sale_1.png"},
    {"title": "Diwali\nGifts", "image": "sale_2.png"},
    {"title": "Appliances\n& Gadgets", "image": "sale_3.png"},
    {"title": "Home\n& Living", "image": "sale_4.png"},
  ];
  final List<Map<String, dynamic>> saleItems2 = [
    {
      "name": "Amul Taaza Toned Fresh Milk",
      "price": 27.0,
      "time": "16 MINS",
      "image": "sale2_1.png",
    },
    {
      "name": "Potato (Aloo)",
      "price": 37.0,
      "time": "16 MINS",
      "image": "sale2_2.png",
    },
    {
      "name": "Hybrid Tomato",
      "price": 37.0,
      "time": "16 MINS",
      "image": "sale2_3.png",
    },
  ];

  final List<Map<String, dynamic>> pTypeList1 = [
    {"img": "grocery_1.png", "type": "Vegetables &\nFruits"},
    {"img": "grocery_2.png", "type": "Atta, Dal &\nRice"},
    {"img": "grocery_3.png", "type": "Oil, Ghee &\nMasala"},
    {"img": "grocery_4.png", "type": "Dairy, Bread &\nMilk"},
    {"img": "grocery_5.png", "type": "Biscuits &\nBakery"},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFF03837),
        toolbarHeight: -11,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatusBar(backgroundColor: Color(0XFFF03837), color: Colors.white),
        
            Container(
              height: 196,
              margin: EdgeInsets.only(top: 1),
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Color(0XFFF03837)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/img_d1.png'),
                      Image.asset('assets/images/img_d2.png'),
                      Text(
                        "Mega Diwali Sale",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppinsB',
                          fontSize: 20,
                        ),
                      ),
                      Image.asset('assets/images/img_d2.png'),
                      Image.asset('assets/images/img_d1.png'),
                    ],
                  ),
                  Container(
                    height: 125,
                    margin: EdgeInsets.only(left: 10),
                    child: ListView.builder(
                      itemCount: saleItems.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final saleI = saleItems[index];
                        return SalesItemCard(
                          text: saleI['title'],
                          img: saleI['image'],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              margin: EdgeInsets.only(left: 10, top: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: saleItems2.length,
                itemBuilder: (context, index) {
                  final saleI1 = saleItems2[index];
                  return ProductCard(
                    image: saleI1["image"],
                    name: saleI1["name"],
                    time: saleI1["time"],
                    price: saleI1["price"],
                  );
                },
              ),
            ),

            Container(
              height: 20,
              margin: EdgeInsets.only( left: 16, bottom: 10),
              child: Text(
                "Grocery & Kitchen",
                style: TextStyle(fontFamily: "poppinsB", fontSize: 14),
              ),
            ),
        
            ProductList(pTypeList: pTypeList1),
          ],
        ),
      ),
    );
  }
}
