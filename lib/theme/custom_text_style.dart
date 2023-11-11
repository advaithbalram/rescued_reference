import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.58),
      );
  // Display text style
  static get displaySmallRoboto =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeRobotoBlack900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.87),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoOnPrimary =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPink80087 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink80087,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallGreenA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
