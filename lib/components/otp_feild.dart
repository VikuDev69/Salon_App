import 'package:flutter/material.dart';

class OTpFeild extends StatelessWidget {
  final dynamic controller;
  final bool obscureText;
  final dynamic validator;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final dynamic keyboardType;
  final dynamic onChanged;

  const OTpFeild(
      {super.key,
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
          maxLength: 1,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: keyboardType,
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          onChanged: onChanged,
          // onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
          textInputAction: TextInputAction.next,
          cursorHeight: 13,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            fillColor: Colors.grey.shade200,
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
              borderSide: BorderSide(
                width: 0,
                color: Color.fromARGB(255, 222, 228, 233),
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.red)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              width: 0,
              color: Color.fromARGB(255, 222, 228, 233),
            )),
          )),
    );
  }
}
