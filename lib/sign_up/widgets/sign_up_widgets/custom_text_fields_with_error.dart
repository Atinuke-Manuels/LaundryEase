import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/sign_up_widgets/password_requirements.dart';

class CustomTextFieldWithError extends StatefulWidget {
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingIconPressed;
  final TextEditingController? controller;
  final TextEditingController? confirmController; // To handle confirm password field
  final Function(String)? onValidate;
  final Function(bool)? onValidationChanged;

  const CustomTextFieldWithError({
    Key? key,
    required this.title,
    required this.hintText,
    required this.keyboardType,
    this.trailingIcon,
    this.onTrailingIconPressed,
    this.controller,
    this.confirmController,
    this.onValidate,
    this.onValidationChanged,
  }) : super(key: key);

  @override
  _CustomTextFieldWithErrorState createState() => _CustomTextFieldWithErrorState();
}

class _CustomTextFieldWithErrorState extends State<CustomTextFieldWithError> {
  final RegExp _nameRegex = RegExp(r'^[a-zA-Z\s\-]{3,30}$');
  final RegExp _emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
  final RegExp _passwordRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$');

  TextEditingController? _internalController;
  String? _errorText;
  bool _obscureText = true; // To handle password visibility
  bool _isValid = true;
  bool _isDirty = false; // Track if the field has been interacted with
  bool _showPasswordRequirements = false;

  bool _hasUppercase = false;
  bool _hasLowercase = false;
  bool _hasNumber = false;
  bool _hasSpecialCharacter = false;

  @override
  void initState() {
    super.initState();
    _internalController = widget.controller ?? TextEditingController();
    // Added listener to the internal controller
    _internalController?.addListener(() {
      _validateInput(_internalController?.text ?? '');
    });
    // Added listener to the confirm controller if it exists
    widget.confirmController?.addListener(() {
      _validateInput(_internalController?.text ?? '');
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _internalController?.dispose();
    }
    super.dispose();
  }

  void _validateInput(String value) {
    String? error;
    if (value.isNotEmpty || _isDirty) { // Validate only if the field is not empty or has been interacted with
      switch (widget.keyboardType) {
        case TextInputType.emailAddress:
          if (!_emailRegex.hasMatch(value)) error = 'Invalid email address';
          break;
        case TextInputType.visiblePassword:
          if (widget.confirmController == null) {
            _showPasswordRequirements = true;
            _hasUppercase = value.contains(RegExp(r'[A-Z]'));
            _hasLowercase = value.contains(RegExp(r'[a-z]'));
            _hasNumber = value.contains(RegExp(r'\d'));
            _hasSpecialCharacter = value.contains(RegExp(r'[@$!%*?&]'));
            if (!_passwordRegex.hasMatch(value)) {
              error = 'Weak password. At least 6 characters long';
            }
            if (_hasUppercase && _hasLowercase && _hasNumber && _hasSpecialCharacter) {
              _showPasswordRequirements = false;
            }
          }
          break;
        case TextInputType.text:
          if (!_nameRegex.hasMatch(value)) error = 'Name should be at least 3 characters long';
          break;
        default:
          break;
      }
      if (widget.confirmController != null && widget.keyboardType == TextInputType.visiblePassword) {
        if (widget.confirmController?.text != value) {
          error = 'Passwords do not match';
        }
      }
    }
    setState(() {
      _errorText = error;
      _isValid = error == null;
    });
    if (widget.onValidationChanged != null) {
      widget.onValidationChanged!(_isValid);
    }
  }

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
            controller: _internalController,
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
              errorText: _isDirty ? _errorText : null, // Display error only if the field has been interacted with
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
                _isDirty = true; // Set the field as interacted with when it's tapped
              });
            },
            onChanged: _validateInput,
          ),
        ),
        if (widget.keyboardType == TextInputType.visiblePassword && _showPasswordRequirements && widget.confirmController == null)
          PasswordRequirements(
            hasUppercase: _hasUppercase,
            hasLowercase: _hasLowercase,
            hasNumber: _hasNumber,
            hasSpecialCharacter: _hasSpecialCharacter,
          ),
      ],
    );
  }
}


