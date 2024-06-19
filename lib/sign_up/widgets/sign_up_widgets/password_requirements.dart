import 'package:flutter/material.dart';

class PasswordRequirements extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialCharacter;

  const PasswordRequirements({
    Key? key,
    required this.hasUppercase,
    required this.hasLowercase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRequirementText(
            'Must contain an uppercase letter e.g A', hasUppercase),
        _buildRequirementText(
            'Must contain a lowercase letter e.g d', hasLowercase),
        _buildRequirementText('Must contain a number e.g 2', hasNumber),
        _buildRequirementText(
            'Must contain a special character e.g @', hasSpecialCharacter),
      ],
    );
  }

  Widget _buildRequirementText(String text, bool isMet) {
    return Row(
      children: [
        Icon(
          isMet ? Icons.check : Icons.close,
          color: isMet ? Colors.green : Colors.red,
          size: 18,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: isMet ? Colors.green : Colors.red,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
