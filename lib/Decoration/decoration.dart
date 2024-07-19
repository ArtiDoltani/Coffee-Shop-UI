import 'package:flutter/material.dart';

class UiHelper {
  static CustomContainer(String text, Color bgcolor, double width,
      double height, VoidCallback voidCallback,
      [IconData? iconData, bool? isicon = false]) {
    return GestureDetector(
      onTap: () {
        voidCallback();
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(15)),
        child: isicon == false
            ? Center(
                child: Text(text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)))
            : Icon(
                iconData,
                color: Colors.white,size: 23,
              ),
      ),
    );
  }
}
