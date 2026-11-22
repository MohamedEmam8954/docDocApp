import 'package:doctorapp/core/theme/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpButtom extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: .center,
      text: TextSpan(
        style: const TextStyle(color: Colors.black, fontSize: 14),
        children: [
          TextSpan(
            text: "Don't have an account? ",
            style: AppStyles.size13StatecharcoalBlackRegular,
          ),
          TextSpan(
            text: "Sign Up",
            style: AppStyles.size13StateMainBlueMeduim,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Sign Up clicked');
              },
          ),
        ],
      ),
    );
  }
}
