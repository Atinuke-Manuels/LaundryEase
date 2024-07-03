import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../login/screens/login.dart';

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Logout', style: TextStyle(fontSize: 16, color: Colors.grey[400])),
        content: const Text('Do you want to log out?', style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
        actions: <Widget>[
          SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120.w,
                height: 40.h,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF344EAF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      side: const BorderSide(
                        color: Color(0xFF344EAF), // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                    // padding: EdgeInsets.symmetric(vertical: 8.h), // Adjust vertical padding
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                width: 120.w,
                height: 40.h,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login())); // Close the dialog
                    // Add your logout logic here
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      side: const BorderSide(
                        color: Color(0xFF344EAF), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    // padding: EdgeInsets.symmetric(vertical: 8.h), // Adjust vertical padding
                  ),
                  child: const Text(
                    'Logout',
                    style: TextStyle(color: Color(0xFF344EAF), fontSize: 12),
                  ),
                ),
              ),
            ],
          )
        ],
      );
    },
  );
}