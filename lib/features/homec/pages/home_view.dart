import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/features/cartc/widgets/clean_state.dart';
import 'package:laundry_ease_upgrade/features/onboardingFirstSet/custom_button.dart';

import '../../cartc/widgets/cart_listview.dart';
import '../../cartc/widgets/fresh_start.dart';
import '../../cartc/widgets/popular_laundromat.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/cart-images/Avatar.png",
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello Michael", style: TextStyle(fontSize: 18,),),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, color: Colors.grey,),
                        Text("Lagos Nigeria", style: TextStyle(color: Colors.grey),),

                      ],
                    )
                  ],
                )
              ],
            ),
            Image.asset("assets/images/cart-images/notification.png",
              width: MediaQuery.of(context).size.width * 0.09,)

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            //width: 2.0,
                            //color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        suffixIcon: Icon(Icons.search),
                        hintText: "Find Laundry Store..",
                        hintStyle: TextStyle(color: Colors.grey, fontSize:12)
                      // filled: true,
                      // fillColor: Colors.grey[200],
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                Text("Category", style: TextStyle(fontSize: 20),),

                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

                CartListView(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

                Container(
                  //use orientation here
                  height:MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.sizeOf(context). height * 0.23
                 : MediaQuery.sizeOf(context). height * 0.5,
                 // width: MediaQuery.of(context).size.width ,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 30,
                        left: 20,
                        child: Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Get 30% on Wash & Fold", style: TextStyle(color: Colors.white, fontSize:14),),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                    Text("CODE: WASHFOLD20", style: TextStyle(color: Color(0xFF0F26A6))),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.015,),
                                    CustomButton(title: 'Book Now',
                                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                                      backgroundColor: Theme.of(context).primaryColor,
                                      foregroundColor: Colors.white,
                                      onPressed: (){},
                                    )
                                  ]
                              ),
                              SizedBox(
                                width:MediaQuery.of(context).orientation == Orientation.portrait
                                    ? MediaQuery.sizeOf(context). width * 0.001
                                    : MediaQuery.sizeOf(context). width * 0.3,
                              ),
                              Image.asset("assets/images/cart-images/btn-shirt.png", width: 140,),
                            ]
                        ) ,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text("Popular Laundromat Nearby", style: TextStyle(fontSize: 16),),
                      GestureDetector(
                          onTap: (){
                            // showModalBottomSheet(
                            //     context: context,
                            //     isScrollControlled: true,
                            //     builder: (BuildContext context) {
                            //       return Container(
                            //         height:  MediaQuery.of(context).size.height,
                            //         child: PopularLaundromat(),
                            //       );
                            //     }
                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PopularLaundromat(),
                              ),
                            );
                          },
                          child: Text("See all", style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),)
                      ),

                    ]
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

                //popular laundromat container
                FreshStart(),


              ],

            ),
          ),
        ),
      ),
    );
  }
}







