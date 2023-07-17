import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/modulos/routers/app_pages.dart';
import 'app/theme/app_theme_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Portifólio',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: appThemeData,
      initialRoute: AppPages.initial,
    );
  }
}
