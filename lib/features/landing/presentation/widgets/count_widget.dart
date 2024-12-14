import 'package:flutter/material.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/app_font.dart';
import '../../../../theme/app_font_size.dart';
import '../../../../theme/app_margin.dart';

class ProjectCountWidget extends StatelessWidget {
  const ProjectCountWidget({super.key, required this.count, required this.title});

  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppMargin.dm_10,
        right: AppMargin.dm_10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            count,
            style: const TextStyle(
              color: AppColor.green,
              fontSize: AppFontSize.font_28,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: AppColor.grey,
              fontSize: AppFontSize.font_12,
              fontWeight: AppFont.fontWeightRegular,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
