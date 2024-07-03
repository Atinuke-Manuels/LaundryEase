import 'package:flutter/material.dart';

class AccountInfoItem extends StatelessWidget {
  final String title;
  final String hintText;
  final Function() onPress;

  const AccountInfoItem({
    super.key, required this.title, required this.hintText, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text( title, style: const TextStyle(fontSize: 14, color: Color(0xFF4C3219)), textAlign: TextAlign.start,),
          TextField(
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(fontSize: 12),
                suffixIcon: GestureDetector(
                    onTap: onPress,
                    child: const Icon(Icons.edit))
            ),
          )
        ],
      ),
    );
  }
}