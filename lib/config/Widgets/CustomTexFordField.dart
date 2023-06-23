import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final bool autoFocus;
  final bool paswword;
  final String hintText;
  final IconData icon;
  final String? Function(String?)? validator;
  final void Function(String) onChanged;

  CustomTextFormField({
    this.autoFocus = false,
    this.paswword = false,
    required this.hintText,
    required this.icon,
    required this.validator,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus,
      obscureText: paswword,
      decoration: InputDecoration(
        hintText: hintText,
        icon: Icon(icon),
      ),
      style: const TextStyle(fontSize: 20),
      validator: validator != null ? (value) => validator!(value) : null,
      onChanged: onChanged,
    );
  }
}

