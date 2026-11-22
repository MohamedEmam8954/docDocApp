import 'package:doctorapp/core/helpers/extensions.dart';
import 'package:doctorapp/core/routing/routes.dart';
import 'package:doctorapp/core/theme/app_styles.dart';
import 'package:doctorapp/core/widgets/cutom_button.dart';
import 'package:doctorapp/features/onboarding/presentation/views/widgets/doctor_img_and_title.dart';
import 'package:doctorapp/features/onboarding/presentation/views/widgets/logo_and_app_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: .center,
              children: [
                LogoAndAppName(),
                SizedBox(height: 40.h),
                DoctorImgAndTitle(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Column(
                    children: [
                      Text(
                        textAlign: .center,
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: AppStyles.size13Gray400FontWeight,
                      ),
                      SizedBox(height: 32.h),
                      CustomButton(
                        title: "Get Started",
                        onTap: () {
                          context.pushNamed(Routes.login);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
