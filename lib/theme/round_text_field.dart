import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'n_colors.dart';

class RoundTextField extends StatelessWidget {
  TextEditingController? controller;
  String? hintText = '';
  bool obscureText = false;
  bool disabled = false;
  TextInputType? keyboardType = TextInputType.text;

  RoundTextField(this.controller, this.hintText, this.obscureText, this.disabled, this.keyboardType);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 45.0,
      child: TextField(
        enabled: !disabled,

        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          filled: disabled,
          fillColor: NColors.disableGrey,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            borderSide: BorderSide(width: 1, color: NColors.borderGrey),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            borderSide: BorderSide(width: 1, color: NColors.borderGrey),

          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
        ),
      ),
    );
  }
}