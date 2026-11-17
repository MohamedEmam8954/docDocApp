import 'package:doctorapp/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AppStyles {
  static TextStyle size24BlackBold = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24.sp,
    color: Colors.black,
  );

  static TextStyle size32Blue700FontWeight = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 32.sp,
    color: AppColor.mainColor,
  );

  static TextStyle size13Gray400FontWeight = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: AppColor.grayColor,
  );

  static TextStyle size16whiteSemibold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: Colors.white,
  );
}
