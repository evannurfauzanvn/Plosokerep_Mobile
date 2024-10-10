import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BorderFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final int? minlines;
  final int? maxlines;
  final EdgeInsetsGeometry? padding;
  final String? label;
  final TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  BorderFormField({
    super.key,
    required this.controller,
    this.hintText,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
    this.minlines,
    this.maxlines,
    this.padding,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label ?? "Label",
            style: textStyle,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            minLines: minlines,
            maxLines: maxlines ?? 1,
          ),
        ],
      ),
    );
  }
}
