import "package:flutter/material.dart";

class UiHelper2 {
  static customFloatingActionButton(
      {required VoidCallback callback,
      required Icon icon,
      required Color color,
      required String widget}) {
    return FloatingActionButton(
      onPressed: callback,
      backgroundColor: color,
      heroTag: widget,
      child: icon,
    );
  }

  static customElevatedButton(
      {required VoidCallback callback,
      required String text,
      required Color color,
      required FontWeight fontWeight,
      required Size size}) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: size,
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: fontWeight, fontSize: 20.0),
      ),
    );
  }
}
