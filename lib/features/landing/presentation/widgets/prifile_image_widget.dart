import 'package:flutter/material.dart';

import '../../../../theme/app_margin.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/person.png',
          height: AppMargin.dm_400,
        ),
        const SizedBox(height: AppMargin.dm_14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/linkdin.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/social-x.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/instagram.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
            Image.asset(
              'assets/icons/facebook.png',
              width: AppMargin.dm_20,
              height: AppMargin.dm_20,
            ),
          ],
        ),
        const SizedBox(height: AppMargin.dm_24),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Hire me'),
        ),
      ],
    );
  }
}
