import 'package:flutter/material.dart';
import 'app_colors.dart';

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: PrimaryPurple,
    titleTextStyle: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: lightPurple
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: lightPurple,
    foregroundColor: PrimaryPurple,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    elevation: 10,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(PrimaryPurple),
      foregroundColor: WidgetStateProperty.all(lightPurple),
      // Adicione a propriedade 'shape' aqui
      shape: WidgetStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
);