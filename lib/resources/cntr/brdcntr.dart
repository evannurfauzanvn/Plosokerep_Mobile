import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class BorderContainer extends StatelessWidget {
  final double? w;
  final double? h;
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
    this.margin, this.w, this.h,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      margin: margin ?? EdgeInsets.only(top: t, left: pm, right: pm),
      padding: padding ?? const EdgeInsets.all(15),
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          color: colors ?? background,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: child,
    );
  }
}
