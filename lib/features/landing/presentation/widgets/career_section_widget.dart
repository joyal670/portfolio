import 'package:flutter/material.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/app_font.dart';
import '../../../../theme/app_font_size.dart';
import '../../../../theme/app_margin.dart';

class CareerSectionWidget extends StatelessWidget {
  const CareerSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Career',
          style: TextStyle(
            color: AppColor.green,
            fontSize: AppFontSize.font_14,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_14),
        Text(
          "Education & Experience",
          style: TextStyle(
            color: AppColor.white,
            fontSize: AppFontSize.font_20,
            fontWeight: AppFont.fontWeightRegular,
          ),
        ),
        SizedBox(height: AppMargin.dm_18),
        CareerDetailsWidget(
          count: "March 2020 - Present",
          title: 'Freelance Designer',
        ),
        SizedBox(height: AppMargin.dm_14),
        CareerDetailsWidget(
          count: "July 2017 - December 2019",
          title: 'Team Lead of Marketing',
        ),
        SizedBox(height: AppMargin.dm_14),
        CareerDetailsWidget(
          count: "July 2017 - December 2019",
          title: 'Team Lead of Marketing',
        ),
        SizedBox(height: AppMargin.dm_14),
        CareerDetailsWidget(
          count: "July 2010 - February 2015",
          title: 'Bachelor Degree of Information Technology',
        ),
      ],
    );
  }
}

class CareerDetailsWidget extends StatelessWidget {
  const CareerDetailsWidget({super.key, required this.count, required this.title});

  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        count,
        style: const TextStyle(
          color: AppColor.grey,
          fontSize: AppFontSize.font_09,
          fontWeight: AppFont.fontWeightRegular,
        ),
      ),
      Text(
        title,
        style: const TextStyle(
          color: AppColor.white,
          fontSize: AppFontSize.font_09,
          fontWeight: AppFont.fontWeightRegular,
        ),
      ),
    ]);
  }
}
