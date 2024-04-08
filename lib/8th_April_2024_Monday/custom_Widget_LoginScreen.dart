import "package:flutter/material.dart";

class UiHelperShared {
  static customTextFormField(
      {required TextEditingController controller,
      required String text,
      required String text2,
      required IconData iconData}) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        labelText: text2,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(iconData),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
