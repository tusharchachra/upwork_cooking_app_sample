import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:upwork_cooking_app_sample/components/theme.dart';
import 'package:upwork_cooking_app_sample/screens/sample_screen.dart';

void main() {
  runApp(MaterialApp(
    builder: (context, child) => const SampleApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
      designSize: const Size(460, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeCustom.lightTheme,
          home: const SampleScreen(),
        );
      },
      //child: SplashScreen(),
    );
  }
}
