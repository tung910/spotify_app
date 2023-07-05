import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({Key? key, this.hintText, this.suffixIcon, this.keyboardType})
      : super(key: key);
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  late bool _isPassword = false;

  @override
  Widget build(BuildContext context) {
    if (keyboardType == TextInputType.visiblePassword) {
      _isPassword = true;
    }

    return TextField(
      obscureText: _isPassword,
      enableSuggestions: false,
      autocorrect: false,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0x99FFFFFF)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0x99FFFFFF), width: 1),
          borderRadius: BorderRadius.circular(24),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
