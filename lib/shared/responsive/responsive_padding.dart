import 'package:flutter/material.dart';
import 'package:website/shared/responsive/constants.dart';

class ResponsivePadding extends StatelessWidget {
  const ResponsivePadding({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).size.width > tabletBreakpoint
          ? const EdgeInsets.all(desktopPadding)
          : const EdgeInsets.all(mobilePadding),
      child: child,
    );
  }
}
