import 'package:flutter/material.dart';
import 'package:social_i/utils/diamensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          //web Screen layout
          return webScreenLayout;
        }
        //mobile screen layout
        return mobileScreenLayout;
      },
    );
  }
}
