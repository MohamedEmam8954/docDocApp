import 'package:doctorapp/core/routing/app_route.dart';
import 'package:doctorapp/core/routing/routes.dart';
import 'package:doctorapp/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: AppColor.mainColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoute().onGenerateRoute,
        initialRoute: Routes.onBoarding,
      ),
    );
  }
}
