import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  const ResponsiveLayout(
      {super.key, required this.mobileScaffold,
      required this.tabletScaffold,
      required this.desktopScaffold});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      if (constrainsts.maxWidth < 500) {
        return mobileScaffold;
      } else if (constrainsts.maxWidth < 1100) {
        return tabletScaffold;
      } else {
        return desktopScaffold;
      }
    });
  }
}
