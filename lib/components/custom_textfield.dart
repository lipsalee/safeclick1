import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class custom_textfield extends StatelessWidget {
//  const custom_textfield({super.key});
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final String? Function(String?)? onsave;
  final int? maxLines;
  final bool isPassword;
  final bool enabled;
  final bool? check;
  final TextInputType? keyboardtype;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final Widget? prefix;
  final Widget? suffix;

  custom_textfield(
      {this.controller,
      this.check,
      this.enabled = true,
      this.focusNode,
      this.hintText,
      this.isPassword = false,
      this.keyboardtype,
      this.maxLines,
      this.onsave,
      this.prefix,
      this.suffix,
      this.textInputAction,
      this.validate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled == true ? true : enabled,
      maxLines: maxLines == null ? 1 : maxLines,
      onSaved: onsave,
      focusNode: focusNode,
      textInputAction: textInputAction,
      keyboardType: keyboardtype == null ? TextInputType.name : keyboardtype,
      controller: controller,
      validator: validate,
      obscureText: isPassword == false ? false : isPassword,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        labelText: hintText ?? "hint text..",
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Theme.of(context).primaryColor,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Color(0xFF909A9E),
            )),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Theme.of(context).primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}