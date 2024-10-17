import 'package:flutter/material.dart';

class DragIndicatorContainer extends StatelessWidget {
  const DragIndicatorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 100,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
