import 'package:flutter/material.dart';

import '../../onboardingFirstSet/custom_button.dart';

class LagosLaundry extends StatelessWidget {
  const LagosLaundry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height:MediaQuery.of(context).size.height * 0.26,
      height: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.26
          : MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              children: [
                Container(
                  //height:MediaQuery.of(context).size.height * 0.26,
                  height: MediaQuery.of(context).orientation == Orientation.portrait
                      ? MediaQuery.of(context).size.height * 0.26
                      : MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.47,
                  child: Image.asset("assets/images/cart-images/washing.png",
                    fit: BoxFit.cover,
                    // fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 15,),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          Text("4.5", style: TextStyle(color: Colors.black54),),
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
          //SizedBox(width: MediaQuery.of(context).size.width * 0.025),
          SizedBox(
            width:MediaQuery.of(context).orientation == Orientation.portrait
                ? MediaQuery.sizeOf(context). width * 0.025
                : MediaQuery.sizeOf(context). width * 0.08,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lagos Laundry Co.", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 14),),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 15, color: Colors.grey,),
                    Text("Ikoyi, Lagos", style: TextStyle(color: Colors.grey, fontSize: 8),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text("Your trusted partner for \n clean clothes and a \n brighter day!", style: TextStyle(color: Colors.grey, fontSize: 10)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                CustomButton(
                  title: "Book Now",
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  onPressed: (){},
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}