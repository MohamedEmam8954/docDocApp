import 'package:doctorapp/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: AppStyles.size13StatesmokeGrayRegular,
          ),
          TextSpan(
            text: "Terms & Conditions ",
            style: AppStyles.size13StatecharcoalBlackRegular,
          ),
          TextSpan(text: "and ", style: AppStyles.size13StatesmokeGrayRegular),
          TextSpan(
            text: "PrivacyPolicy",
            style: AppStyles.size13StatecharcoalBlackRegular,
          ),
        ],
      ),
    );
  }
}
