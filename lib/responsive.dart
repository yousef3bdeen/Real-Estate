import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.desktop,
    required this.tablet,
    required this.mobileLarg,
    required this.mobile,
  }) : super(key: key);

  final Widget desktop;
  final Widget? tablet;
  final Widget? mobileLarg;
  final Widget mobile;

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarg(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 450 && mobileLarg != null) {
      return mobileLarg!;
    } else {
      return mobile;
    }
  }
}
