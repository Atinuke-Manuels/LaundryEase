import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> requestPasswordReset(String emailOrMobile, Function onSuccess, Function(String) onError) async {
  final url = Uri.parse('https://laundryease.onrender.com/api/users/forgotPassword');

  final response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'emailOrMobile': emailOrMobile,
    }),
  );

  if (response.statusCode == 200) {
    onSuccess();
  } else {
    final responseBody = jsonDecode(response.body);
    onError(responseBody['message'] ?? 'Failed to request password reset.');
  }
}
