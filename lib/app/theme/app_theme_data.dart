import 'package:flutter/material.dart';

import '../helper/my_color.dart';

final ThemeData appThemeData = ThemeData(
  // outlinedButtonTheme: const OutlinedButtonThemeData(
  //   style: ButtonStyle(
  //
  //   )
  // ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  canvasColor: Colors.white,
  textTheme: const TextTheme(),
  primaryColor: MyColor.background,
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      iconTheme: IconThemeData(color: MyColor.ciano),
      titleTextStyle: TextStyle(color: MyColor.ciano, fontSize: 20),
      elevation: 0),
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Nunito',
  cardColor: MyColor.background,
);
