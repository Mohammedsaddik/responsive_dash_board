import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dotIndicator.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({super.key, required this.curentpageIndex});
  final int curentpageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CustomDotIndicator(isActive: index == curentpageIndex),
              )),
    );
  }
}