// Definicion de temas para estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Constantes de color primario
  static const primaryColor = Color.fromRGBO(7, 98, 12, 0.612);
  // Constante de color de fondo 
  static const backColor = Color.fromRGBO(255, 255, 255, 1);
  //   Constante de color secundario
  static const secondatyColor = Color.fromRGBO(17, 35, 177, 0.792);
// Constante de tema 
  static final ThemeData ligthTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme:  AppBarTheme(
      color: primaryColor,
      titleTextStyle: GoogleFonts.allura(
        color: Colors.black87,
        fontSize: 40,
        fontWeight: FontWeight.bold
      ),
      ),
      iconTheme: const IconThemeData(
        color: primaryColor,
        size: 20.0
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all( 
            Color.fromARGB(251, 171, 226, 169),
          ),
          foregroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.abyssinicaSil(fontSize: 25)
          )
        )
      ),
      textTheme: TextTheme(
        //Subtitulos grandes
        headlineLarge: GoogleFonts.shadowsIntoLightTwo(
          color: primaryColor,
          fontSize: 20.5,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black26,
          decorationStyle: TextDecorationStyle.dashed,
          decorationThickness: 2
        ),
        // Estilo para estilo muy pequeño
        bodySmall: GoogleFonts.alegreyaSc(
          color: secondatyColor,
          fontSize: 15,
          fontWeight: FontWeight.normal
        ),
      )
      );
}