import 'package:canal_olympia/src/core/utils/size_utils.dart';
import 'package:canal_olympia/src/modules/app/themes.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.6),
      );
  static BoxDecoration get fillBlack90001 => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.5),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray800,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillIndigoF => BoxDecoration(
        color: appTheme.indigo9007f,
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.black90001.withOpacity(0),
            appTheme.black90001,
          ],
        ),
      );
  static BoxDecoration get gradientErrorContainerToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.errorContainer,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.gray90000,
            appTheme.gray900,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorContainerToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.onErrorContainer.withOpacity(0),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.56),
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(1, 0.5),
          end: const Alignment(0, 0.5),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineDeepOrangeF => const BoxDecoration();
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              3.64,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: appTheme.indigo9007f,
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(0.1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer.withOpacity(0.1),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder21 => BorderRadius.circular(
        21.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
