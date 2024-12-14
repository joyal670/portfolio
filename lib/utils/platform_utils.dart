import 'package:flutter/material.dart';

class PlatformUtils {
  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }
}
