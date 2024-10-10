import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  final Widget child;
  final Color? colors;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double pm = 16;
  final double t = 20;
  const BorderContainer({
    super.key,
    required this.child,
    this.colors,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.only(top: t, left: pm, right: pm),
      padding: padding ?? const EdgeInsets.all(15),
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          color: colors ?? Colors.white,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
