import 'package:doctorapp/core/theme/app_styles.dart';
import 'package:doctorapp/core/widgets/custom_text_form_field.dart';
import 'package:doctorapp/core/widgets/cutom_button.dart';
import 'package:doctorapp/features/login/presentation/view/widgets/sign_up_button.dart';
import 'package:doctorapp/features/login/presentation/view/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class LoginViewBody extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text("Welcome Back", style: AppStyles.size24MainBlueBold),
                    Text(
                      "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                      style: AppStyles.size14StateGrayRegular,
                    ),
                    36.verticalSpace,
                    CustomTextFormField(
                      hinText: "Email",
                      onChanged: (value) {},
                    ),
                    16.verticalSpace,
                    CustomTextFormField(
                      obscureText: obscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          obscureText = !obscureText;
                          setState(() {});
                        },
                        child: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                      hinText: "Password",
                      onChanged: (value) {},
                    ),
                    12.verticalSpace,
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: AppStyles.size14MainBlue400FontWeight,
                        ),
                      ),
                    ),
                    16.verticalSpace,
                    CustomButton(title: "Login", onTap: () {}),
                    16.verticalSpace,
                    TermsAndCondition(),
                    Spacer(),
                    Center(child: SignUpButtom()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
