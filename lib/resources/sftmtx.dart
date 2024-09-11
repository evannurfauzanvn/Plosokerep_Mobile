import 'package:flutter/material.dart';

class SecureFormtext extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const SecureFormtext({super.key, 
    required this.controller,
    required this.hintText,
  });

  @override
  State<StatefulWidget> createState() => _SecureFormtext();
}

class _SecureFormtext extends State<SecureFormtext> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}
