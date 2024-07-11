import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.red,
      child: SizedBox(
        height: MediaQuery.of(context).orientation == Orientation.portrait
        ?  MediaQuery.sizeOf(context).height * 0.15
            : MediaQuery.sizeOf(context).height * 0.3,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.25,
              //height: MediaQuery.sizeOf(context).height * 0.005,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Color(0xFF0F26A6), width:2),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/cart-images/btn-shirt.png", width:50,),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                  Text("Wash and Fold", style: TextStyle(color: Color(0xFF0F26A6), fontSize: 10),),
                ],
              ),
            ),

            SizedBox (width: MediaQuery.sizeOf(context).width * 0.02,),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.25,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                //border: Border.all(color: Color(0xFF0F26A6), width:2),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/cart-images/washing-machine.png", width: 40,),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                  Text("Dry Cleaning", style: TextStyle(color: Color(0xFF0F26A6), fontSize: 10),),


                ],
              ),
            ),
            SizedBox (width: MediaQuery.sizeOf(context).width * 0.02,),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.25,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                //border: Border.all(color: Color(0xFF0F26A6), width:2),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/cart-images/handwashing.png", width: 40,),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.03,),
                  Text("Hand Washing", style: TextStyle(color: Color(0xFF0F26A6), fontSize: 10),),


                ],
              ),
            ),
            SizedBox (width: MediaQuery.sizeOf(context).width * 0.02,),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.25,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                //border: Border.all(color: Color(0xFF0F26A6), width:2),
                borderRadius: BorderRadius.circular(16),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/cart-images/eco.png", width: 50,),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                  Text("Eco Friendly", style: TextStyle(color: Color(0xFF0F26A6), fontSize: 10),),


                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}