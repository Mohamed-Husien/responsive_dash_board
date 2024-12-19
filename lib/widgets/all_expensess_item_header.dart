import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key, required this.image, this.imageBackground, this.imageColor});
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              // width: 60,
              // height: 60,
              decoration: ShapeDecoration(
                color: imageBackground ?? const Color(0xFFFAFAFA),
                shape: const OvalBorder(),
              ),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
        const Spacer(), //it is like Expanded(child:sizedBox()),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: imageColor ?? const Color(0xff064061),
        ),
      ],
    );
  }
}
