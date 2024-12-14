import 'package:flutter/material.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/app_font.dart';
import '../../../../theme/app_font_size.dart';
import '../../../../theme/app_margin.dart';

class AboutSectionWidget extends StatelessWidget {
  const AboutSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(
            color: AppColor.green,
            fontSize: AppFontSize.font_14,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_14),
        Text(
          "Every great design begin with an even better story",
          style: TextStyle(
            color: AppColor.white,
            fontSize: AppFontSize.font_20,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_14),
        Text(
          "Since beginning my journey as a freelance designer nearly 8 years ago, I've done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I'm quietly confident, naturally curious, and perpetually working on improving my chopsone design problem at a time.",
          style: TextStyle(
            color: AppColor.grey,
            fontSize: AppFontSize.font_10,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
      ],
    );
  }
}
