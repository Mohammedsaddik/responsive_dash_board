import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static final items = [
    ItemDetailModel(
        color: const Color(0xFF208BC7), title: "Design service", value: "40%"),
    ItemDetailModel(
        color: const Color(0xFF4DB7F2), title: "Design product", value: "25"),
    ItemDetailModel(
        color: const Color(0xFF064060), title: "Product royalti", value: "20"),
    ItemDetailModel(
        color: const Color(0xFFE2DECD), title: "Other", value: "22"),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toInt());
    return Column(
      children: items.map((e) => ItemDetails(itemDetailModel: e)).toList(),
    );
  }
}
