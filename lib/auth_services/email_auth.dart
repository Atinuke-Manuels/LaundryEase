import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> resendVerificationEmail(String email, Function onSuccess, Function(String) onError) async {
  final url = Uri.parse('https://laundryease.onrender.com/api/users/verifyEmail');

  final response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
    }),
  );

  if (response.statusCode == 200) {
    onSuccess();
  } else {
    final responseBody = jsonDecode(response.body);
    onError(responseBody['message'] ?? 'Failed to resend email.');
  }
}
