import 'package:flutter/material.dart';

class StandardTextField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final TextInputType inputType;
  final FocusNode focusNode;
  final TextInputAction action;
  final Function onActionPressed;
  final TextEditingController controller;
  const StandardTextField(this.hint,
      {this.obscureText = false,
      this.controller,
      this.inputType = TextInputType.name,
      this.focusNode,
      this.action = TextInputAction.done,
      this.onActionPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: inputType,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            hintText: this.hint),
        textInputAction: action,
        onEditingComplete: () {
          if (onActionPressed != null) {
            onActionPressed();
          } else if (focusNode != null) {
            focusNode?.nextFocus();
          }
        },
      ),
    );
  }
}
