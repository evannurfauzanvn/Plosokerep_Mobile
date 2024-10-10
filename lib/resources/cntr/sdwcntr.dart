import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final double w;
  final double h;
  final Widget child;
  final Color? colors;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const ShadowContainer({super.key, required this.w, required this.h, required this.child, this.colors, this.padding, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: w,
      height: h,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        color: colors??Colors.white,
        border: Border.all(width: 0.1,color: Colors.grey),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 2,
            offset: Offset(-5, 5)
          )
        ]
      ),
      child: child,
    );
  }
  
}