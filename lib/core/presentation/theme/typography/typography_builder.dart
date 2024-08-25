import 'package:flutter/material.dart';

import 'typography_constants.dart';
import 'typography_extension.dart';

///
/// Builder class to construct styles related to Typography.
///
abstract class TypographyBuilder {
  ///
  /// Creates the app default text styles, defined by our UX Team.
  ///
  static AppTextStyle buildAppTextStyle(
    Color textColor, [
    String? fontFamily,
  ]) {
    final family = fontFamily ?? appFontFamily;

    return AppTextStyle(
      captionLight: TextStyle(
        fontSize: AppFontSize.caption.value,
        fontWeight: AppFontWeight.light.value,
        color: textColor,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      caption: TextStyle(
        fontSize: AppFontSize.caption.value,
        fontWeight: AppFontWeight.regular.value,
        color: textColor,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      captionMedium: TextStyle(
        fontSize: AppFontSize.caption.value,
        fontWeight: AppFontWeight.medium.value,
        color: textColor,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      captionBold: TextStyle(
        fontSize: AppFontSize.caption.value,
        fontWeight: AppFontWeight.bold.value,
        color: textColor,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      buttonLight: TextStyle(
        fontSize: AppFontSize.button.value,
        color: textColor,
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.xs.value,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      button: TextStyle(
        fontSize: AppFontSize.button.value,
        color: textColor,
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.xs.value,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      buttonMedium: TextStyle(
        fontSize: AppFontSize.button.value,
        color: textColor,
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.xs.value,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      buttonBold: TextStyle(
        fontSize: AppFontSize.button.value,
        color: textColor,
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.xs.value,
        leadingDistribution: TextLeadingDistribution.even,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      calloutLight: TextStyle(
        color: textColor,
        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.md.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      callout: TextStyle(
        color: textColor,

        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.md.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      calloutMedium: TextStyle(
        color: textColor,

        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.md.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      calloutBold: TextStyle(
        color: textColor,

        fontSize: AppFontSize.callout.value,
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.md.value,
        fontFamily: family,
        letterSpacing: 0,
      ),
      body2Light: TextStyle(
        fontSize: AppFontSize.body2.value,
        color: textColor,
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      body2: TextStyle(
        fontSize: AppFontSize.body2.value,
        color: textColor,
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      body2Medium: TextStyle(
        fontSize: AppFontSize.body2.value,
        color: textColor,
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      body2Bold: TextStyle(
        fontSize: AppFontSize.body2.value,
        color: textColor,
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      body1Light: TextStyle(
        fontSize: AppFontSize.body1.value,
        color: textColor,
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      body1: TextStyle(
        fontSize: AppFontSize.body1.value,
        color: textColor,
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      body1Medium: TextStyle(
        fontSize: AppFontSize.body1.value,
        color: textColor,
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      body1Bold: TextStyle(
        fontSize: AppFontSize.body1.value,
        color: textColor,
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h3Light: TextStyle(
        fontSize: AppFontSize.headline3.value,
        color: textColor,
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h3: TextStyle(
        fontSize: AppFontSize.headline3.value,
        color: textColor,
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h3Medium: TextStyle(
        fontSize: AppFontSize.headline3.value,
        color: textColor,
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h3Bold: TextStyle(
        fontSize: AppFontSize.headline3.value,
        color: textColor,
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h2Light: TextStyle(
        fontSize: AppFontSize.headline2.value,
        color: textColor,
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h2: TextStyle(
        fontSize: AppFontSize.headline2.value,
        color: textColor,
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h2Medium: TextStyle(
        fontSize: AppFontSize.headline2.value,
        color: textColor,
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h2Bold: TextStyle(
        fontSize: AppFontSize.headline2.value,
        color: textColor,
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h1Light: TextStyle(
        fontSize: AppFontSize.headline1.value,
        color: textColor,
        fontWeight: AppFontWeight.light.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h1: TextStyle(
        fontSize: AppFontSize.headline1.value,
        color: textColor,
        fontWeight: AppFontWeight.regular.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h1Medium: TextStyle(
        fontSize: AppFontSize.headline1.value,
        color: textColor,
        fontWeight: AppFontWeight.medium.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
      h1Bold: TextStyle(
        fontSize: AppFontSize.headline1.value,
        color: textColor,
        fontWeight: AppFontWeight.bold.value,
        height: AppLineHeight.sm.value,
        fontFamily: fontFamily,
        letterSpacing: 0,
      ),
    );
  }
}
