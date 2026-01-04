import 'package:flutter/material.dart';
import 'package:responsive_ui_sample_2/responsive/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    super.key,
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (Dimensions.isMobile(constraints.maxWidth)) {
          return mobileScaffold;
        } else if (Dimensions.isTablet(constraints.maxWidth)) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
