import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 8.fSize,
      );
  static get bodySmallBluegray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 8.fSize,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
        fontSize: 8.fSize,
      );
  static get bodySmallGray60002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmallGray600028 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60002,
        fontSize: 8.fSize,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter;
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins;
  static get bodySmallPoppins12 => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallRedRoseBluegray800 =>
      theme.textTheme.bodySmall!.redRose.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodySmallRedRoseBluegray80012 =>
      theme.textTheme.bodySmall!.redRose.copyWith(
        color: appTheme.blueGray800,
        fontSize: 12.fSize,
      );
  // Label text style
  static get labelLargeBluegray70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70001,
      );
  static get labelLargePoppinsOnPrimary =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargePoppinsOnPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeRobotoOnPrimary =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargeRobotoOnPrimaryContainer =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsBluegray700 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumRoboto => theme.textTheme.labelMedium!.roboto.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumRobotoGray60002 =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumRobotoMedium =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGray60002 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get labelSmallRoboto => theme.textTheme.labelSmall!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallRobotoBluegray300 =>
      theme.textTheme.labelSmall!.roboto.copyWith(
        color: appTheme.blueGray300,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallRobotoGray60001 =>
      theme.textTheme.labelSmall!.roboto.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallRobotoGray60002 =>
      theme.textTheme.labelSmall!.roboto.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallRobotoMedium =>
      theme.textTheme.labelSmall!.roboto.copyWith(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallRobotoOnPrimaryContainer =>
      theme.textTheme.labelSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelSmallRobotoPrimary =>
      theme.textTheme.labelSmall!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  // Roboto text style
  static get robotoBluegray400 => TextStyle(
        color: appTheme.blueGray400,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  static get robotoBluegray800 => TextStyle(
        color: appTheme.blueGray800,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  static get robotoGray500 => TextStyle(
        color: appTheme.gray500,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  // Title text style
  static get titleMediumRedRoseOnPrimary =>
      theme.textTheme.titleMedium!.redRose.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRedRosePrimary =>
      theme.textTheme.titleMedium!.redRose.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallGray60002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get titleSmallInterTeal30003 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.teal30003,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoOnPrimaryContainer =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
}

extension on TextStyle {
  TextStyle get redRose {
    return copyWith(
      fontFamily: 'Red Rose',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
