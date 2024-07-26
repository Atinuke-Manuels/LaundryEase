import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/sign_up_widgets/password_requirements.dart';

class LoginTextFields extends StatefulWidget {
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingIconPressed;
  final TextEditingController? controller;
  final Function(bool)? onValidationChanged;

  const LoginTextFields({
    Key? key,
    required this.title,
    required this.hintText,
    required this.keyboardType,
    this.trailingIcon,
    this.onTrailingIconPressed,
    this.controller,
    this.onValidationChanged,
  }) : super(key: key);

  @override
  _LoginTextFieldsState createState() => _LoginTextFieldsState();
}

class _LoginTextFieldsState extends State<LoginTextFields> {
  String? _errorText;
  bool _obscureText = true; // To handle password visibility

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          widget.title,
          style: const TextStyle(fontSize: 13, color: Color(0xFF575757)),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey, width: 0.5),
          ),
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.keyboardType == TextInputType.visiblePassword ? _obscureText : false,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontSize: 13,
                color: Colors.grey[500],
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: _errorText != null ? const BorderSide(color: Colors.red) : BorderSide.none,
              ),
              errorText: _errorText, // Display error only if the field has been interacted with
              suffixIcon: widget.keyboardType == TextInputType.visiblePassword
                  ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey[500],
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
                  : (widget.trailingIcon != null
                  ? IconButton(
                icon: Icon(widget.trailingIcon, color: Colors.grey[500]),
                onPressed: widget.onTrailingIconPressed,
              )
                  : null),
            ),
            maxLines: 1,
            keyboardType: widget.keyboardType,
            onTap: () {
              setState(() {
                _errorText; // Set the field as interacted with when it's tapped
              });
            },
            onChanged: (text) {
              if (widget.onValidationChanged != null) {
                widget.onValidationChanged!(text.isNotEmpty);
              }
            },
          ),
        ),
      ],
    );
  }
}
