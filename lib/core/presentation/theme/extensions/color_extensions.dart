import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../palette/palette.dart';

///
/// Theme extensions for colors on BuildContext
///
extension ColorThemeContextExtension on BuildContext {
  /// Theme for this context
  ThemeData get theme => Theme.of(this);

  /// Returns the [IColorPalette] implementation based on current theme
  /// brightness associated to the current context
  IColorPalette get colorPalette {
    final type = ThemeType.fromBrightness(Theme.of(this).brightness);
    return AppTheme.instance.colorPalette(type);
  }
}
