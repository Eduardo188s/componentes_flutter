// Definicion de temas para estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Constantes de color primario
  static const primaryColor = Color.fromRGBO(9, 128, 15, 0.612);
  // Constante de color de fondo 
  static const backColor = Color.fromRGBO(255, 255, 255, 1);
  //   Constante de color secundario
  static const secondatyColor = Color.fromRGBO(47, 67, 218, 0.788);
// Constante de tema 
  static final ThemeData ligthTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme:  AppBarTheme(
      color: primaryColor,
      titleTextStyle: GoogleFonts.averiaLibre(
        color: Colors.black87,
        fontSize: 30,
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
            const Color.fromARGB(249, 133, 210, 130),
          ),
          foregroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.averiaLibre(fontSize: 25)
          )
        )
      ),
      textTheme: TextTheme(
        //Subtitulos grandes
        headlineLarge: GoogleFonts.averiaLibre(
          color: primaryColor,
          fontSize: 20.5,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.black26,
          decorationStyle: TextDecorationStyle.dashed,
          decorationThickness: 2
        ),

        headlineMedium: GoogleFonts.averiaLibre(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        // Estilo para estilo muy pequeño
        bodySmall: GoogleFonts.averiaLibre(
          color: secondatyColor,
          fontSize: 15,
          fontWeight: FontWeight.normal
        ),
      )
      );
}