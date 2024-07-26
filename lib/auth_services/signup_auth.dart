import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> signUp(
    String name,
    String email,
    String password,
    String confirmPassword,
    BuildContext context,
    Function onSuccess,
    ) async {
  final url = Uri.parse('https://laundryease.onrender.com/api/users/signup');

  final response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': name,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
    }),
  );

  if (response.statusCode == 201) {
    onSuccess();
  } else {
    final responseBody = jsonDecode(response.body);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(responseBody['message'] ?? 'Signup failed.'),
      ),
    );
  }
}
