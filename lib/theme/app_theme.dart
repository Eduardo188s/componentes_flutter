// Definicion de temas para estilo de la app
import 'package:flutter/material.dart';

class AppTheme{
  //Constantes de color primario
  static const primaryColor = Color.fromARGB(5, 235, 33, 33);
  // Constante de color de fondo 
  static const backColor = Color.fromARGB(44, 129, 11, 11);
// Constante de tema 
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor
      )
    );
}