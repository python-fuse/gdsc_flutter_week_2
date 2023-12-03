import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hint;
  final IconData inputIcon;
  final TextInputType keyType;

  const Input({
    super.key,
    required this.hint,
    required this.inputIcon,
    required this.keyType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.purple.shade400),
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        keyboardType: keyType,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey.shade400),
            icon: Icon(
              inputIcon,
              size: 20,
            )),
      ),
    );
  }
}
