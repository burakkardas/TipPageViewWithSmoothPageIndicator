import 'package:flutter/material.dart';
import 'package:tip_app/Utility/Enums/app_image_enum.dart';

extension AppImageExtension on AppImageEnum {
  String get toAppImage => 'assets/images/$name.png';

  Widget get toImage => Image.asset(toAppImage);
}
