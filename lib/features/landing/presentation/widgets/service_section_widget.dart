import 'package:flutter/material.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/app_font.dart';
import '../../../../theme/app_font_size.dart';
import '../../../../theme/app_margin.dart';

class ServiceSectionWidget extends StatelessWidget {
  const ServiceSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Services',
          style: TextStyle(
            color: AppColor.green,
            fontSize: AppFontSize.font_14,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_14),
        Text(
          "My expertise and services",
          style: TextStyle(
            color: AppColor.white,
            fontSize: AppFontSize.font_28,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: OutlinedContainer(
                count: 'UX/UI Design',
                title: '21 PROJECTS',
              ),
            ),
            Expanded(
              child: OutlinedContainer(
                count: 'Branding',
                title: '16 PROJECTS',
              ),
            ),
            Expanded(
              child: OutlinedContainer(
                count: 'Websites',
                title: '34 PROJECTS',
              ),
            ),
          ],
        )
      ],
    );
  }
}

class OutlinedContainer extends StatelessWidget {
  const OutlinedContainer({super.key, required this.count, required this.title});

  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.grey,
        ),
        borderRadius: BorderRadius.circular(
          AppMargin.dm_10,
        ),
      ),
      margin: const EdgeInsets.only(left: AppMargin.dm_10, right: AppMargin.dm_10),
      padding: const EdgeInsets.symmetric(vertical: AppMargin.dm_10, horizontal: AppMargin.dm_10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            count,
            style: const TextStyle(
              color: AppColor.white,
              fontSize: AppFontSize.font_16,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: AppColor.grey,
              fontSize: AppFontSize.font_10,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
        ],
      ),
    );
  }
}
