import 'package:flutter/material.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/app_font.dart';
import '../../../../theme/app_font_size.dart';
import '../../../../theme/app_margin.dart';

class PortfolioSectionWidget extends StatelessWidget {
  const PortfolioSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Portfolio',
          style: TextStyle(
            color: AppColor.green,
            fontSize: AppFontSize.font_14,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        const SizedBox(height: AppMargin.dm_14),
        const Text(
          "Featured Projects",
          style: TextStyle(
            color: AppColor.white,
            fontSize: AppFontSize.font_28,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        const SizedBox(height: AppMargin.dm_30),
        Image.asset(
          'assets/icons/portfolio3.png',
          height: AppMargin.dm_200,
        ),
        const SizedBox(height: AppMargin.dm_30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/icons/portfolio1.png',
              height: AppMargin.dm_100,
            ),
            const SizedBox(width: AppMargin.dm_30),
            Image.asset(
              'assets/icons/portfolio2.png',
              height: AppMargin.dm_100,
            ),
            const SizedBox(width: AppMargin.dm_30),
            Image.asset(
              'assets/icons/portfolio1.png',
              height: AppMargin.dm_100,
            ),
          ],
        ),
      ],
    );
  }
}
