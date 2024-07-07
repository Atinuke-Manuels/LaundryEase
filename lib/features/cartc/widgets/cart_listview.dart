import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.22,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.36,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              border: Border.all(color: Color(0xFF0F26A6), width:2),
              borderRadius: BorderRadius.circular(16),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/cart-images/btn-shirt.png", width:80,),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                Text("Wash and Fold", style: TextStyle(color: Color(0xFF0F26A6)),),
              ],
            ),
          ),

          SizedBox (width: MediaQuery.sizeOf(context).width * 0.05,),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.36,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              //border: Border.all(color: Color(0xFF0F26A6), width:2),
              borderRadius: BorderRadius.circular(16),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/cart-images/washing-machine.png", width: 60,),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                Text("Dry Cleaning", style: TextStyle(color: Color(0xFF0F26A6)),),


              ],
            ),
          ),
          SizedBox (width: MediaQuery.sizeOf(context).width * 0.05,),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.36,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              //border: Border.all(color: Color(0xFF0F26A6), width:2),
              borderRadius: BorderRadius.circular(16),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/cart-images/handwashing.png", width: 60,),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                Text("Hand Washing", style: TextStyle(color: Color(0xFF0F26A6)),),


              ],
            ),
          ),


        ],
      ),
    );
  }
}