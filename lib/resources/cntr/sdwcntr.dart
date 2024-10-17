import 'package:flutter/material.dart';
import 'package:plosokerep_apk/resources/clr.dart';

class ShadowContainer extends StatelessWidget {
  final BorderRadius? borderRadius;
  final double? w;
  final double? h;
  final Widget child;
  final Color? colors;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const ShadowContainer(
      {super.key,
      this.w,
      this.h,
      required this.child,
      this.colors,
      this.padding,
      this.margin,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: w,
      height: h,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: colors ?? background,
          border: Border.all(width: 0.1, color: Colors.grey),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54, blurRadius: 2, offset: Offset(-5, 5))
          ]),
      child: child,
    );
  }
}
