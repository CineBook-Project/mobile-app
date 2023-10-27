import 'package:canal_olympia/src/core/utils/size_utils.dart';
import 'package:canal_olympia/src/modules/app/themes.dart';
import 'package:flutter/material.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w100,
      );
  static get bodyLargeOnErrorContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyLargeThin => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w100,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumOnErrorContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumThin => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w100,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallIBMPlexSans =>
      theme.textTheme.bodySmall!.iBMPlexSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallOnErrorContainerRegular =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodySmallOnErrorContainerRegular9 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 9.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallOnErrorContainerRegular_1 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular_1 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Label text style
  static get labelLargeSora => theme.textTheme.labelLarge!.sora.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 11.fSize,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_2 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray50016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray50016_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray500SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleSmallBluegray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 15.fSize,
      );
  static get titleSmallBluegray500_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
      );
}

extension on TextStyle {
  TextStyle get iBMPlexSans {
    return copyWith(
      fontFamily: 'IBM Plex Sans',
    );
  }

  TextStyle get sora {
    return copyWith(
      fontFamily: 'Sora',
    );
  }
}
