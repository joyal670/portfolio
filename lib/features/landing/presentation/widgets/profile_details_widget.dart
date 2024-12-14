import 'package:flutter/material.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/app_font.dart';
import '../../../../theme/app_font_size.dart';
import '../../../../theme/app_margin.dart';
import 'count_widget.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello',
          style: TextStyle(
            color: AppColor.green,
            fontSize: AppFontSize.font_14,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_14),
        Text(
          "I'm Jonathan, UX/UI Designer and no-code Developer",
          style: TextStyle(
            color: AppColor.white,
            fontSize: AppFontSize.font_28,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_14),
        Text(
          "I craft elegant solutions to complex problems, and I gives me pleasure. I'm living in Berlin with my loving wife and cute daughter.",
          style: TextStyle(
            color: AppColor.grey,
            fontSize: AppFontSize.font_10,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_50),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ProjectCountWidget(
                count: '4+',
                title: 'Years Experience',
              ),
            ),
            Expanded(
              child: ProjectCountWidget(
                count: '10+',
                title: 'Completed Project',
              ),
            ),
            Expanded(
              child: ProjectCountWidget(
                count: '4+',
                title: 'Happy Client',
              ),
            ),
          ],
        )
      ],
    );
  }
}
