import 'package:flutter/material.dart';
import 'package:responsiv_ui_example/src/utils/responsive_helper.dart';

import 'constants.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension ContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

extension ResponsiveContextExtension on BuildContext {
  bool get isMobile {
    return width <= BreakPoints.mobileMaxWidth &&
        width > BreakPoints.tinyPhoneMaxWidth;
  }

  bool get isTinyMobile {
    return width <= BreakPoints.tinyPhoneMaxWidth;
  }

  bool get isTablet {
    return width > BreakPoints.mobileMaxWidth &&
        width <= BreakPoints.tabletMaxWidth;
  }

  bool get isTinyTablet {
    return width > BreakPoints.mobileMaxWidth &&
        width <= BreakPoints.tinyTabletMaxWidth;
  }

  bool get isDesktop {
    return width > BreakPoints.tabletMaxWidth;
  }

  bool get isLargeDesktop {
    return width > BreakPoints.desktop;
  }
}

extension ResizeHelperExtension on BuildContext {
  T resizeHelper<T>(
          {required T mobile,
          T? minTablet,
          T? tablet,
          T? desktop,
          T? largeDesktop,
          T? tinyMobile}) =>
      ResponsiveHelper.getValues<T>(
        this,
        mobile: mobile,
        minyPhone: tinyMobile ?? mobile,
        minyTablet: minTablet ?? mobile,
        tablet: tablet ?? minTablet,
        desktop: desktop ?? tablet,
        largeDesktop: largeDesktop ?? desktop,
      );
}
