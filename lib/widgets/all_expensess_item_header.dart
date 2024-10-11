import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.Image,
    this.imageBackGround,
    this.ImageColor,
  });
  final String Image;
  final Color? imageBackGround, ImageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60.0,
              maxHeight: 60.0,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackGround ?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  colorFilter: ColorFilter.mode(
                      ImageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  Image,
                )),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(Icons.arrow_back_ios_new_outlined,
              size: 15,
              color:
                  ImageColor == null ? const Color(0xFF064061) : Colors.white),
        ),
      ],
    );
  }
}
