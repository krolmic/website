import 'package:flutter/material.dart';
import 'package:website/shared/responsive/constants.dart';

/// A widget that changes its child based on the screen size.
///
/// Returns [child] if the screen size is greater than or equal to
/// the tablet breakpoint or [tabletChild] and [mobileChild] are not provided.
///
/// Rreturns [tabletChild] if the screen size is greater than or equal to
/// the mobile breakpoint and [tabletChild] is not null.
///
/// Returns [mobileChild] if the screen size is less than the mobile breakpoint
/// and [mobileChild] is not null.
class Responsive extends StatelessWidget {
  const Responsive({
    required this.child,
    super.key,
    this.mobileChild,
    this.tabletChild,
  });

  final Widget? mobileChild;
  final Widget? tabletChild;
  final Widget child;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileBreakpoint &&
      MediaQuery.of(context).size.width < tabletBreakpoint;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletBreakpoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= tabletBreakpoint ||
            (tabletChild == null && mobileChild == null)) {
          return child;
        } else if (constraints.maxWidth >= mobileBreakpoint &&
            tabletChild != null) {
          return tabletChild!;
        } else if (constraints.maxWidth < mobileBreakpoint &&
            mobileChild != null) {
          return mobileChild!;
        } else {
          return child;
        }
      },
    );
  }
}
