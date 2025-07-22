import 'package:blinkit/repository/widgets/product_type_card.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> pTypeList;

  const ProductList({super.key, required this.pTypeList});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, bottom: 10),
      height: 115,
      child: ListView.builder(
        itemCount: pTypeList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final pType = pTypeList[index];
          return ProductType(image: pType['img'], pType: pType['type']);
        },
      ),
    );
  }
}
