// import 'package:flutter/material.dart';
//
// class LaundromatNearby extends StatelessWidget {
//   final Container container;
//   final String title;
//   final EdgeInsetsGeometry padding;
//   final Color backgroundColor;
//   final Color foregroundColor;
//   final Function()? onPressed;
//
//
//   const CustomButton({
//     super.key,
//     required this.title,
//     required this.padding,
//     required this.backgroundColor,
//     required this.foregroundColor,
//     this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       child: Text(title),
//       style: ElevatedButton.styleFrom(
//         backgroundColor:  backgroundColor,
//         foregroundColor: foregroundColor,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         padding: padding,
//       ),
//     );
//   }
// }