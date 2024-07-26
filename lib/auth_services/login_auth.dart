import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> login(
    BuildContext context,
    String email,
    String password,
    Function onSuccess
    ) async {
  final url = Uri.parse('https://laundryease.onrender.com/api/users/login');
  final body = jsonEncode(<String, String>{
    'email': email.trim(),
    'password': password.trim(),
  });

  try {
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: body,
    );

    final responseBody = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // Handle success
      onSuccess();
    } else {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(responseBody['message'] ?? 'Login failed.'),
        ),
      );
    }
  } catch (e) {
    // Handle exceptions
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('An error occurred. Please try again.'),
      ),
    );
  }
}
