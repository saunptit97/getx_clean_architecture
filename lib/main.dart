import 'package:base/config/theme.dart';
import 'package:base/routes/pages.dart';
import 'package:base/routes/routes.dart';
import 'package:base_getx/controller/base_controller.dart';
import 'package:flutter/material.dart';

import 'di/di.dart';
import 'translate/language.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      getPages: Pages.pages,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.signIn,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      translations: TranslationsLocate(),
      // home: const MyHomePage(),
    );
  }
}
