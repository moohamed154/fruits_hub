import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/size_config.dart';

abstract class TextStyles {
  static TextStyle regular11(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle semiBold11(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle regular13(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle bold13(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle semiBold13(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle medium15(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle regular16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle bold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle semiBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold19(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 19),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle regular22(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle bold23(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 23),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bold28(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle regular26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontWeight: FontWeight.normal,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  //* mediaQuery بديل
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
