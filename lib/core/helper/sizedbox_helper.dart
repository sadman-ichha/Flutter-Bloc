import 'package:flutter/material.dart';

extension SizedboxHelper on SizedBox {
  
  static SizedBox height(double? height) {
    return SizedBox(height: height);
  }

  static SizedBox width(double? width) {
    return SizedBox(width: width);
  }

  static SizedBox size(double? height, double? width) {
    return SizedBox(height: height, width: width);
  }
}
