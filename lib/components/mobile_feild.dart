import 'package:flutter/material.dart';

class MobileTextField extends StatelessWidget {
  final dynamic controller;
  final String labeltext;
  final bool obscureText;
  final dynamic validator;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final dynamic keyboardType;
  final dynamic onChanged;

  const MobileTextField(
      {super.key,
      required this.labeltext,
      required this.obscureText,
      this.onChanged,
      this.controller,
      this.validator,
      this.prefixIcon,
      this.keyboardType,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: TextFormField(
        maxLength: 10,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        onChanged: onChanged,
        // onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
            counterText: "",
            contentPadding:
                EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
            floatingLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey),
            ),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.5, color: Colors.red)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1.5, color: Colors.grey)),
            labelText: labeltext,
            hintText: labeltext,
            hintStyle: const TextStyle(color: Colors.grey),
            labelStyle: const TextStyle(
              color: Colors.grey,
            )),
      ),
    );
  }
}
