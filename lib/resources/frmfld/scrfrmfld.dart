import 'package:flutter/material.dart';

class SecureFormField extends StatefulWidget {
  final String? label;
  final TextEditingController controller;
  final String hintText;

  const SecureFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.label,
  });

  @override
  State<StatefulWidget> createState() => _SecureFormField();
}

class _SecureFormField extends State<SecureFormField> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label ?? "Label",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
        TextFormField(
          controller: widget.controller,
          obscureText: _isObscured,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscured ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _isObscured = !_isObscured;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
