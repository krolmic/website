import 'package:flutter/material.dart';
import 'package:website/shared/responsive/responsive.dart';

class ResponsiveRow extends StatelessWidget {
  const ResponsiveRow({
    required this.children,
    this.reverseChildrenOnTablet = false,
    super.key,
  });

  final List<Widget> children;
  final bool reverseChildrenOnTablet;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabletChild: Column(
        children:
            reverseChildrenOnTablet ? children.reversed.toList() : children,
      ),
      child: Row(
        children: children,
      ),
    );
  }
}
