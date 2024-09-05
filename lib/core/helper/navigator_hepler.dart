import 'package:flutter/material.dart';

class NavigatorHelper {
  static Future<T?> navigateTo<T>(BuildContext context, Widget screen) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => screen),
      ),
    );
  }

 static void toBack(BuildContext context) {
  Navigator.pop(context);
}

}
