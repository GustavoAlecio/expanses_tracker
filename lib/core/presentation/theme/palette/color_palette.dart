import 'package:flutter/material.dart';

abstract class IColorPalette {
  MaterialColor get backgroundPalette;
  MaterialColor get base;
  MaterialColor get primary;
  MaterialColor get secondary;
  MaterialColor get tertiary;
  MaterialColor get quartiary;
  MaterialColor get error;
}

class LightColorPalette implements IColorPalette {
  @override
  MaterialColor get backgroundPalette => const MaterialColor(0xffFAFBFF, {
    50: Color(0xFFFAFBFF),
    100: Color(0xFFE6E8F0),
    200: Color(0xFFBFC4D1),
    300: Color(0xFF999EB2),
    400: Color(0xFF4D5A7A),
    500: Color(0xFF212426),
    600: Color(0xFF1D2023),
    700: Color(0xFF16181C),
    800: Color(0xFF0F1113),
    900: Color(0xFF08090C),
  });

  @override

  MaterialColor get base => const MaterialColor(0xFF212426, {
    50: Color(0xFFFAFBFF),
    100: Color(0xFFE6E8F0),
    200: Color(0xFFBFC4D1),
    300: Color(0xFF999EB2),
    400: Color(0xFF4D5A7A),
    500: Color(0xFF212426),
    600: Color(0xFF1D2023),
    700: Color(0xFF16181C),
    800: Color(0xFF0F1113),
    900: Color(0xFF08090C),
  });

  @override

  MaterialColor get error => const MaterialColor(0xFFFF7A00, {
    50: Color(0xFFFFF0E0),
    100: Color(0xFFFFE0B3),
    200: Color(0xFFFFC280),
    300: Color(0xFFFFA04D),
    400: Color(0xFFFF7A00),
    500: Color(0xFFFF6A00),
    600: Color(0xFFE65F00),
    700: Color(0xFFCC5400),
    800: Color(0xFFB24900),
    900: Color(0xFF993E00),
  });

  @override

  MaterialColor get primary => const MaterialColor(0xFFF2BE22, {
    50: Color(0xFFFFF8E0),
    100: Color(0xFFFFF0B3),
    200: Color(0xFFFFE680),
    300: Color(0xFFFFDC4D),
    400: Color(0xFFFFD100),
    500: Color(0xFFF2BE22),
    600: Color(0xFFE6B300),
    700: Color(0xFFCC9E00),
    800: Color(0xFFB38A00),
    900: Color(0xFF996600),
  });

  @override

  MaterialColor get secondary => const MaterialColor(0xFFF2A30F, {
    50: Color(0xFFFFF3E0),
    100: Color(0xFFFFE0B3),
    200: Color(0xFFFFC280),
    300: Color(0xFFFFA04D),
    400: Color(0xFFFF7A00),
    500: Color(0xFFF2A30F),
    600: Color(0xFFE69500),
    700: Color(0xFFCC8500),
    800: Color(0xFFB37400),
    900: Color(0xFF995500),
  });

  @override

  MaterialColor get tertiary => const MaterialColor(0xFFBF6C06, {
    50: Color(0xFFFFF0E0),
    100: Color(0xFFFFE0B3),
    200: Color(0xFFFFC280),
    300: Color(0xFFFFA04D),
    400: Color(0xFFFF7A00),
    500: Color(0xFFBF6C06),
    600: Color(0xFFA95F00),
    700: Color(0xFF8C4F00),
    800: Color(0xFF703F00),
    900: Color(0xFF593200),
  });
  
  @override
  MaterialColor get quartiary => const MaterialColor(0xFFD9B88F, {
    50: Color(0xFFFFF8E0),
    100: Color(0xFFFFF0B3),
    200: Color(0xFFFFE680),
    300: Color(0xFFFFDC4D),
    400: Color(0xFFFFD100),
    500: Color(0xFFD9B88F),
    600: Color(0xFFC9A77A),
    700: Color(0xFFB08F60),
    800: Color(0xFF98764B),
    900: Color(0xFF7D5D36),
  });
}

class DarkColorPalette implements IColorPalette {
  @override
  MaterialColor get backgroundPalette => const MaterialColor(0xFF212426, {
    50: Color(0xFFFAFBFF),
    100: Color(0xFFE6E8F0),
    200: Color(0xFFBFC4D1),
    300: Color(0xFF999EB2),
    400: Color(0xFF4D5A7A),
    500: Color(0xFF212426),
    600: Color(0xFF1D2023),
    700: Color(0xFF16181C),
    800: Color(0xFF0F1113),
    900: Color(0xFF08090C),
  });

  @override

  MaterialColor get base => const MaterialColor(0xffFAFBFF, {
    50: Color(0xFFFAFBFF),
    100: Color(0xFFE6E8F0),
    200: Color(0xFFBFC4D1),
    300: Color(0xFF999EB2),
    400: Color(0xFF4D5A7A),
    500: Color(0xFF212426),
    600: Color(0xFF1D2023),
    700: Color(0xFF16181C),
    800: Color(0xFF0F1113),
    900: Color(0xFF08090C),
  });

  @override

  MaterialColor get error => const MaterialColor(0xFFFF7A00, {
    50: Color(0xFFFFF0E0),
    100: Color(0xFFFFE0B3),
    200: Color(0xFFFFC280),
    300: Color(0xFFFFA04D),
    400: Color(0xFFFF7A00),
    500: Color(0xFFFF6A00),
    600: Color(0xFFE65F00),
    700: Color(0xFFCC5400),
    800: Color(0xFFB24900),
    900: Color(0xFF993E00),
  });

  @override

  MaterialColor get primary => const MaterialColor(0xFFF2BE22, {
    50: Color(0xFFFFF8E0),
    100: Color(0xFFFFF0B3),
    200: Color(0xFFFFE680),
    300: Color(0xFFFFDC4D),
    400: Color(0xFFFFD100),
    500: Color(0xFFF2BE22),
    600: Color(0xFFE6B300),
    700: Color(0xFFCC9E00),
    800: Color(0xFFB38A00),
    900: Color(0xFF996600),
  });

  @override

  MaterialColor get secondary => const MaterialColor(0xFFF2A30F, {
    50: Color(0xFFFFF3E0),
    100: Color(0xFFFFE0B3),
    200: Color(0xFFFFC280),
    300: Color(0xFFFFA04D),
    400: Color(0xFFFF7A00),
    500: Color(0xFFF2A30F),
    600: Color(0xFFE69500),
    700: Color(0xFFCC8500),
    800: Color(0xFFB37400),
    900: Color(0xFF995500),
  });

  @override

  MaterialColor get tertiary => const MaterialColor(0xFFBF6C06, {
    50: Color(0xFFFFF0E0),
    100: Color(0xFFFFE0B3),
    200: Color(0xFFFFC280),
    300: Color(0xFFFFA04D),
    400: Color(0xFFFF7A00),
    500: Color(0xFFBF6C06),
    600: Color(0xFFA95F00),
    700: Color(0xFF8C4F00),
    800: Color(0xFF703F00),
    900: Color(0xFF593200),
  });
  
  @override
  MaterialColor get quartiary => const MaterialColor(0xFFD9B88F, {
    50: Color(0xFFFFF8E0),
    100: Color(0xFFFFF0B3),
    200: Color(0xFFFFE680),
    300: Color(0xFFFFDC4D),
    400: Color(0xFFFFD100),
    500: Color(0xFFD9B88F),
    600: Color(0xFFC9A77A),
    700: Color(0xFFB08F60),
    800: Color(0xFF98764B),
    900: Color(0xFF7D5D36),
  });
}
