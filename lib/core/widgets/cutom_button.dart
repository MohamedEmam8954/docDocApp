import 'package:doctorapp/core/theme/app_color.dart';
import 'package:doctorapp/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.title});
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.mainColor,
        shape: RoundedRectangleBorder(borderRadius: .circular(16.r)),
        tapTargetSize: .shrinkWrap,
        minimumSize: Size(double.infinity, 52.h),
      ),
      onPressed: onTap,
      child: Text(title, style: AppStyles.size16whiteSemibold),
    );
  }
}
