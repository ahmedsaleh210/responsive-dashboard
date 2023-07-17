import 'package:flutter/material.dart';
import 'package:responsiv_ui_example/src/utils/extension.dart';

class ResponsiveHelper {
  static T getValues<T>(BuildContext context,
      {required T mobile,
      T? minyPhone,
      T? minyTablet,
      T? tablet,
      T? desktop,
      T? largeDesktop}) {
    if (context.isMobile) {
      return mobile;
    } 
    else if (context.isTinyMobile && minyPhone != null) {
      return minyPhone;
    }
    else if (context.isTinyTablet && minyTablet != null) {
      return minyTablet;
    } else if (context.isTablet && tablet != null) {
      return tablet;
    } else if (context.isDesktop && desktop != null) {
      return desktop;
    } else if (context.isLargeDesktop && largeDesktop != null) {
      return largeDesktop;
    }

    return mobile;
  }
}
