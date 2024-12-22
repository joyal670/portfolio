import 'package:flutter/material.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/app_font.dart';
import '../../../../theme/app_font_size.dart';
import '../../../../theme/app_margin.dart';

class ContactSectionWidget extends StatelessWidget {
  const ContactSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppMargin.dm_20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact',
            style: TextStyle(
              color: AppColor.green,
              fontSize: AppFontSize.font_14,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
          const SizedBox(height: AppMargin.dm_14),
          const Text(
            "Let's work together!",
            style: TextStyle(
              color: AppColor.white,
              fontSize: AppFontSize.font_20,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
          const SizedBox(height: AppMargin.dm_14),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter full name',
              label: Text('Full name'),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: AppColor.grey,
                fontSize: AppFontSize.font_14,
                fontWeight: AppFont.fontWeightRegular,
              ),
            ),
            style: TextStyle(
              color: AppColor.white,
              fontSize: AppFontSize.font_14,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
          const SizedBox(height: AppMargin.dm_25),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Email address',
              label: Text('Email'),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: AppColor.grey,
                fontSize: AppFontSize.font_14,
                fontWeight: AppFont.fontWeightRegular,
              ),
            ),
            style: TextStyle(
              color: AppColor.white,
              fontSize: AppFontSize.font_14,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
          const SizedBox(height: AppMargin.dm_25),
          const TextField(
            decoration: InputDecoration(
              hintText: '+00 000 000 0000',
              label: Text('Phone'),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: AppColor.grey,
                fontSize: AppFontSize.font_14,
                fontWeight: AppFont.fontWeightRegular,
              ),
            ),
            style: TextStyle(
              color: AppColor.white,
              fontSize: AppFontSize.font_14,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
          const SizedBox(height: AppMargin.dm_25),
          const TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Write a little brief about your project or scope of work.',
              label: Text('Message'),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: AppColor.grey,
                fontSize: AppFontSize.font_14,
                fontWeight: AppFont.fontWeightRegular,
              ),
            ),
            style: TextStyle(
              color: AppColor.white,
              fontSize: AppFontSize.font_14,
              fontWeight: AppFont.fontWeightRegular,
            ),
          ),
          const SizedBox(height: AppMargin.dm_30),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Send'),
          ),
        ],
      ),
    );
  }
}
