import 'package:blinkit/features/category/widgets/category_list.dart';
import 'package:blinkit/core/widgets/status_bar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> pTypeList1 = [
    {"img": "grocery_1.png", "type": "Vegetables &\nFruits"},
    {"img": "grocery_2.png", "type": "Atta, Dal &\nRice"},
    {"img": "grocery_3.png", "type": "Oil, Ghee &\nMasala"},
    {"img": "grocery_4.png", "type": "Dairy, Bread &\nMilk"},
    {"img": "grocery_5.png", "type": "Biscuits &\nBakery"},
  ];
  final List<Map<String, dynamic>> pTypeList3 = [
    {"img": "grocery_21.png", "type": "Chips &\nNamkeens"},
    {"img": "grocery_22.png", "type": "Sweets &\nChocolates"},
    {"img": "grocery_23.png", "type": "Drinks &\nJuices"},
    {"img": "grocery_24.png", "type": "Sauces &\nSpreads"},
    {"img": "grocery_25.png", "type": "Beauty &\nCosmetics"},
  ];
  final List<Map<String, dynamic>> pTypeList2 = [
    {"img": "grocery_11.png", "type": "Dry Fruits &\nCereals"},
    {"img": "grocery_12.png", "type": "Kitchen &\nAppliances"},
    {"img": "grocery_13.png", "type": "Tea &\nCoffees"},
    {"img": "grocery_14.png", "type": "Ice Creams &\nmuch more"},
    {"img": "grocery_15.png", "type": "Noodles &\nPacket Food"},
  ];
  final List<Map<String, dynamic>> pTypeList4 = [
    {"img": "grocery_31.png", "type": "Vegetables &\nFruits"},
    {"img": "grocery_32.png", "type": "Atta, Dal &\nRice"},
    {"img": "grocery_33.png", "type": "Oil, Ghee &\nMasala"},
    {"img": "grocery_34.png", "type": "Dairy, Bread &\nMilk"},
    {"img": "grocery_35.png", "type": "Biscuits &\nBakery"},
  ];
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFF9D56A),
        toolbarHeight: -11,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StatusBar(),
        
            Container(
              height: 20,
              margin: EdgeInsets.only(top: 13, left: 16, bottom: 10),
              child: Text(
                "Grocery & Kitchen",
                style: TextStyle(fontFamily: "poppinsB", fontSize: 14),
              ),
            ),
        
            ProductList(pTypeList: pTypeList1),
        
            ProductList(pTypeList: pTypeList2),
            Container(
              height: 20,
              margin: EdgeInsets.only(top: 13, left: 16, bottom: 10),
              child: Text(
                "Snacks & Drinks",
                style: TextStyle(fontFamily: "poppinsB", fontSize: 14),
              ),
            ),
        
            ProductList(pTypeList: pTypeList3),
        
            ProductList(pTypeList: pTypeList4),
          ],
        ),
      ),
    );
  }
}
