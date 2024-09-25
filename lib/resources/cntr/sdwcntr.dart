import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final double w;
  final double h;
  final Widget child;
  const ShadowContainer({super.key, required this.w, required this.h, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: Colors.white,
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