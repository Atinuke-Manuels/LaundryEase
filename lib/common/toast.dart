import 'package:flutter/material.dart';


void showToast(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: const Color(0xFF0070FF),
      behavior: SnackBarBehavior.fixed,
    ),
  );
}