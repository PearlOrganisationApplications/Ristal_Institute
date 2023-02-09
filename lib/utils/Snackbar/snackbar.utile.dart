import 'package:flutter/material.dart';

class SnackUtil {
  static stylishSnackBar(
      {required String text, required BuildContext context}) {
    return SnackBar(
      backgroundColor: Colors.deepPurpleAccent,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.fromLTRB(40, 0, 40, 100),
      content: Text(
        text,
        style: const TextStyle(
          color: Colors.amber,
          // fontFamily: AppFonts.contax,
        ),
      ),
    );
  }
}
