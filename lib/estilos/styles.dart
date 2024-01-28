import 'package:flutter/material.dart';

class AppColors {
  static const primaryBlack = Color(0xFF181818);
  static const primaryRed = Color(0xFFFE6965);
  static const primaryWhite = Color(0xFFFFFFFF);
  static const primaryGrey = Color(0xFF6B7176);

  static const primaryTitleColor = Color(0xFFF2F2F2); // Titulos principales
  static const secondaryTitleColor = Color(0xFFD6E1ED); // Titulos secundarios
  static const subtitleColor = Color(0xFFF5F5F5); // Subtitulos

   static const goldBaseColor = Color(0xFFE7B95E); // Dorados Base
  static const goldDetailColor = Color(0xFFDB9921); // Dorados Detalle

  static const silverBaseColor = Color(0xFFB6B2AF); // Plateados Base
  static const silverDetailColor = Color(0xFF958F8B); // Plateados Detalle

  static const bronzeBaseColor = Color(0xFFCF8452); // Bronce Base
  static const bronzeDetailColor = Color(0xFFB85113); // Bronce Detalle

  static const copperBaseColor = Color(0xFFA04832); // Cobre Base
  static const copperDetailColor = Color(0xFF760900); // Cobre Detalle
}

class AppStyles {
  static const headingTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlack,
  );

  static const bodyTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.primaryBlack,
  );
  // Agrega más estilos según sea necesario
}
