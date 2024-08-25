import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dimension/dimension.dart';
import 'palette/color_palette.dart';
import 'typography/typography.dart';

/// The app supported theme types.
enum ThemeType {
  /// Light theme
  light,

  /// Dark theme
  dark;

  /// Build a [ThemeType] from a [Brightness] instance
  static ThemeType fromBrightness(Brightness brightness) {
    if (brightness == Brightness.light) return light;

    return dark;
  }
}

///
/// New theming definitions.
///
/// Defines the default Light and Dark themes.
///
class AppTheme {
  AppTheme._();

  static final AppTheme _instance = AppTheme._();
  final Map<ThemeType, ThemeData> _themes = {};
  final Map<ThemeType, IColorPalette> _palettes = {};

  /// Current [AppTheme] singleton instance
  static AppTheme get instance => _instance;

  /// Store the theme and colorPalette for a specific [type]
  void set(
    ThemeType type, {
    required ThemeData theme,
    required IColorPalette colorPalette,
  }) {
    _themes[type] = theme;
    _palettes[type] = colorPalette;
  }

  /// Checks whether there's a theme instance for the current [type] and,
  /// when necessary, builds and store a new theme instance.
  void buildAndSet(
    ThemeType type, {
    required IColorPalette colorPalette,
    required Brightness brightness,
    required Color backgroundColor,
    required Color foregroundColor,
    String? fontFamily,
  }) {
    _themes.putIfAbsent(
      type,
      () => builder(
        colorPalette: colorPalette,
        brightness: brightness,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        fontFamily: fontFamily,
      ),
    );
    _palettes.putIfAbsent(type, () => colorPalette);
  }

  /// Updates the theme and color palette for a specific [type].
  /// This method will replace the existing theme and color palette with the new ones provided.
  void update(
    ThemeType type, {
    required IColorPalette colorPalette,
    required Brightness brightness,
    required Color backgroundColor,
    required Color foregroundColor,
    String? fontFamily,
  }) {
    _themes.remove(type);
    _themes.putIfAbsent(
      type,
      () => builder(
        colorPalette: colorPalette,
        brightness: brightness,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        fontFamily: fontFamily,
      ),
    );
    _palettes.remove(type);
    _palettes.putIfAbsent(type, () => colorPalette);
  }

  /// Get the [ThemeData] corresponding to the [type] informed.
  /// Make sure the theme was previously created with [set] or [buildAndSet] methods.
  ThemeData get(ThemeType type) {
    assert(_themes[type] != null, 'Theme should be initialized first.');
    return _themes[type]!;
  }

  /// Returns the current [IColorPalette] implementation for light theme
  IColorPalette colorPalette(ThemeType type) {
    assert(_palettes[type] != null, 'Theme should be initialized first.');
    return _palettes[type]!;
  }

  ///
  /// Builds a theme, based on the provided colors.
  ///
  ThemeData builder({
    required IColorPalette colorPalette,
    required Brightness brightness,
    required Color backgroundColor,
    required Color foregroundColor,
    String? fontFamily,
  }) {
    final foreground = colorPalette.base;

    final appTextStyle = TypographyBuilder.buildAppTextStyle(
      foreground,
      fontFamily,
    );

    return ThemeData(
      useMaterial3: true,
      fontFamily: fontFamily ?? appFontFamily,
      primaryColor: colorPalette.primary,
      brightness: brightness,
      scaffoldBackgroundColor: colorPalette.backgroundPalette,
      cardColor: colorPalette.backgroundPalette,
      canvasColor: Colors.transparent,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: foreground,
      ),
      extensions: [appTextStyle],
      iconTheme: IconThemeData(
        color: foreground,
        size: AppFontSize.button.value,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        titleTextStyle: appTextStyle.calloutMedium.copyWith(
          height: AppLineHeight.xs.value,
        ),
        systemOverlayStyle: brightness == Brightness.dark
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: foreground),
      ),
      dividerColor: foreground,
      dividerTheme: DividerThemeData(
        space: 0,
        color: foreground,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(
          colorPalette.backgroundPalette,
        ),
        fillColor: MaterialStateProperty.all(foreground),
        side: BorderSide(color: foreground, width: 1.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xxs.value)),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(foreground),
        overlayColor: MaterialStateProperty.all(foreground),
      ),
      disabledColor: foreground,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: colorPalette.secondary),
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xs.value)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorPalette.secondary),
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xs.value)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorPalette.base),
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xs.value)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: foreground),
          borderRadius: BorderRadius.all(Radius.circular(Dimension.xs.value)),
        ),
        floatingLabelStyle: MaterialStateTextStyle.resolveWith((states) {
          final style = TextStyle(
            fontWeight: AppFontWeight.bold.value,
            fontSize: AppFontSize.callout.value,
            height: AppLineHeight.sm.value,
          );

          if (states.contains(MaterialState.error)) {
            return style.copyWith(color: colorPalette.error);
          }
          if (states.contains(MaterialState.disabled)) {
            return style.copyWith(color: foreground);
          }
          return style.copyWith(color: foreground);
        }),
        labelStyle: TextStyle(
          color: foreground,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.body1.rawValue.toDouble(),
          height: AppLineHeight.sm.value,
        ),
        hintStyle: TextStyle(
          color: foreground,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.body1.value,
          height: AppLineHeight.sm.value,
        ),
        helperStyle: TextStyle(
          color: foreground,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.caption.value,
          height: AppLineHeight.xs.value,
        ),
        errorStyle: TextStyle(
          color: colorPalette.error,
          fontWeight: AppFontWeight.regular.value,
          fontSize: AppFontSize.caption.value,
          height: AppLineHeight.xs.value,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: Dimension.sm.height,
              horizontal: Dimension.xl.width,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(colorPalette.base),
          foregroundColor: MaterialStateProperty.all(foreground),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(
              height: AppLineHeight.xs.value,
            ),
          ),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: Dimension.sm.height,
              horizontal: Dimension.xl.width,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(
              height: AppLineHeight.xs.value,
            ),
          ),
          side: MaterialStateProperty.all(BorderSide(color: foreground)),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(Dimension.xs.paddingAll),
          textStyle: MaterialStateProperty.all(
            appTextStyle.buttonMedium.copyWith(color: foreground),
          ),
        ),
      ),
      scrollbarTheme: const ScrollbarThemeData().copyWith(
        thumbColor: MaterialStateProperty.all(colorPalette.base),
        thumbVisibility: MaterialStateProperty.all(true),
        radius: Radius.circular(Dimension.md.value),
        thickness: MaterialStateProperty.all(Dimension.xxs.width),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.symmetric(
          vertical: Dimension.xs.height,
          horizontal: Dimension.sm.width,
        ),
        shape: StadiumBorder(
          side: BorderSide(color: colorPalette.base),
        ),
        showCheckmark: false,
        labelStyle: appTextStyle.calloutMedium,
        selectedColor: foreground,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        backgroundColor: brightness == Brightness.dark
            ? colorPalette.base.shade200
            : colorPalette.backgroundPalette,
      ),
      colorScheme: ColorScheme(
        primary: colorPalette.primary,
        primaryContainer: foregroundColor,
        secondary: colorPalette.secondary,
        secondaryContainer: colorPalette.secondary,
        surface: colorPalette.backgroundPalette,
        background: colorPalette.backgroundPalette,
        error: colorPalette.error,
        shadow: Colors.transparent,
        onPrimary: colorPalette.backgroundPalette,
        onSecondary: foreground,
        onSurface: foreground,
        onBackground: foreground,
        onError: colorPalette.backgroundPalette,
        brightness: brightness,
      ),
    );
  }
}
