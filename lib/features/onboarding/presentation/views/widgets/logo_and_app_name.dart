import 'package:doctorapp/constants/assets.dart';
import 'package:doctorapp/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class LogoAndAppName extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        SvgPicture.asset(Assets.assetsImagesDocLogo),
        SizedBox(width: 8.w),
        Text("Docdoc", style: AppStyles.size24BlackBold),
      ],
    );
  }
}
