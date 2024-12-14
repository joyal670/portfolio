import 'package:flutter/material.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/app_font.dart';
import '../../../../theme/app_font_size.dart';
import '../../../../theme/app_margin.dart';

class SkillsSectionWidget extends StatelessWidget {
  const SkillsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Skills',
          style: TextStyle(
            color: AppColor.green,
            fontSize: AppFontSize.font_14,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        const SizedBox(height: AppMargin.dm_14),
        const Text(
          "My skills and knowledge",
          style: TextStyle(
            color: AppColor.white,
            fontSize: AppFontSize.font_28,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        const SizedBox(height: AppMargin.dm_30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/vector.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/figma_svg.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/blender.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/photoshop_svg.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/illustrator.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/after_effect.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/miro_svg.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
          ],
        ),
      ],
    );
  }
}
