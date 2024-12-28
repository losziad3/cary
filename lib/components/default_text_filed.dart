import 'package:flutter/material.dart';


  Widget defaultTextField({
    required TextEditingController? controller,
    textColor,
    TextInputType? type,
    Function()? onTap,
    Color? color,
    Color? hintColor,
    Function(String)? onChange,
    required String? Function(String?) validate,
    Function(String)? onSubmit,
    bool isPassword = false,
    required String? label,
    required IconData? prefix,
    iconColor,
    IconData? suffix,
    suffixColor,
    Function()? suffixPress,
  }) {
    return TextFormField(
      showCursor: true,
      cursorColor: Colors.black,
      style: TextStyle(color: color),
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onChanged: onChange,
      onTap: onTap,
      onFieldSubmitted: onSubmit,
      validator: validate,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red),
        labelStyle:  TextStyle(color: Colors.black),
        floatingLabelStyle:const TextStyle(color: Colors.blueGrey) ,
        labelText: label,
        prefixIcon: Icon(
          prefix,
          color: iconColor,
        ),
        suffixIcon: suffix != null
            ? IconButton(
            onPressed: suffixPress,
            icon: Icon(
              suffix,
              color: suffixColor,
            ))
            : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }











