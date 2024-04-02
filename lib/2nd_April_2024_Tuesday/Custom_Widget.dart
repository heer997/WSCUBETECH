import "package:flutter/material.dart";

class UiHelper {
  static customTextFormField(
      {required TextEditingController controller,
      required String hintText,
      required Icon suffixIcon}) {
    return Container(
      height: 70.0,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(11.0),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          border: InputBorder.none,
        ),
      ),
    );
  }

  static customContainer({required Color color}) {
    return Container(
      width: 130.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        color: color,
      ),
    );
  }

  static customContainer2({required Color color}) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        color: color,
      ),
    );
  }

  static customContainer3({required String text, required String image}) {
    return Stack(
      children: [
        Container(
          width: 170.0,
          height: 100.0,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 40.0),
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0),
          ),
        ),
      ],
    );
  }
}
