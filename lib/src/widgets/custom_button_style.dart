import 'package:canal_olympia/src/core/utils/size_utils.dart';
import 'package:canal_olympia/src/modules/app/themes.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientErrorContainerToPrimaryDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.errorContainer,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientErrorContainerToPrimaryTL7Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(7.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange4003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              3,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.errorContainer,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientErrorContainerToPrimaryTL8Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange4003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.errorContainer,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration
      get gradientOnPrimaryContainerToOnPrimaryContainerDecoration =>
          BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(1.0, 0),
              end: const Alignment(0.0, 0),
              colors: [
                theme.colorScheme.onPrimaryContainer,
                theme.colorScheme.onPrimaryContainer.withOpacity(0),
              ],
            ),
          );

  // Outline button style
  static ButtonStyle get outlineBlueGray => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueGray500,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.h),
        ),
      );
  static ButtonStyle get outlineDeepOrangeF => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: appTheme.deepOrange4003f,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryContainer => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primaryContainer.withOpacity(0.1),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );

  // Radius button style
  static ButtonStyle get radiusTL8 => ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
