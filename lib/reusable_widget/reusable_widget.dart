import 'package:flutter/material.dart';

Image logoWidget(String imageName, double imgWidth, double imgHeight,
    {Color? customColor}) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: imgWidth,
    height: imgHeight,
    color: customColor,
  );
}

TextField reusableTextfiled(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
  );
}
