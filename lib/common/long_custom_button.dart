import 'package:flutter/material.dart';

class LongCustomButton extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color? borderColor;
  final Function()? onPressed;
  final BorderRadius? borderRadius;


  const LongCustomButton({
    super.key,
    required this.title,
    this.padding,
    required this.backgroundColor,
    required this.foregroundColor,
    this.onPressed,
    this.borderRadius,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width *0.8,
        height: 40,
        decoration: BoxDecoration(
          border: borderColor != null ? Border.all(color: borderColor!) : null,
          borderRadius: borderRadius,
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor:  backgroundColor,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: padding,
          ),
          child: Text(title),
        ),
      ),
    );
  }
}