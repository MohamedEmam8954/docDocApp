import 'package:doctorapp/constants/assets.dart';
import 'package:doctorapp/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImgAndTitle extends StatelessWidget {
  const DoctorImgAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.assetsImagesDocLogoWithLowOpicity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset(Assets.assetsImagesOnboardingDoctorImg),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 20,
          child: Text(
            textAlign: .center,
            "Best Doctor\n Appointment App",
            style: AppStyles.size32Blue700FontWeight,
          ),
        ),
      ],
    );
  }
}
