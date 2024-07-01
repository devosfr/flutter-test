import 'package:flutter/material.dart';

class TextFormFieldComponent extends StatelessWidget {
  final String label;
  final bool obscureText;
  final String? Function(String?)? validator;
  const TextFormFieldComponent(
      {super.key,
      required this.label,
      this.obscureText = false,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
          label: Text(label),
          border: const OutlineInputBorder(
            // borderRadius: BorderRadius.circular(18),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )),
    );
  }
}
