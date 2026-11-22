import 'package:doctorapp/core/theme/app_color.dart';
import 'package:doctorapp/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    required this.hinText,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.obscureText,
    this.contentPadding,
    this.suffixIcon,
  });
  final void Function(String)? onChanged;
  final String hinText;
  final OutlineInputBorder? enabledBorder;
  final OutlineInputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final bool? obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 17.h, horizontal: 20.w),
        isDense: true,
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: .circular(16.r),
              borderSide: BorderSide(color: AppColor.softGray, width: 1.5),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: .circular(16.r),
              borderSide: BorderSide(color: AppColor.mainColor, width: 1.5),
            ),
        filled: true,
        fillColor: AppColor.snowWhite,
        hintText: hinText,
        hintStyle: hintStyle ?? AppStyles.size14silverGrayMedium,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
