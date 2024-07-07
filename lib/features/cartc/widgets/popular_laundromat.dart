import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/features/cartc/widgets/clean_state.dart';
import 'package:laundry_ease_upgrade/features/cartc/widgets/fresh_start.dart';
import 'package:laundry_ease_upgrade/features/cartc/widgets/lagos_laundry.dart';
import 'package:laundry_ease_upgrade/features/cartc/widgets/sunshine_laundry.dart';
import 'package:laundry_ease_upgrade/features/homec/pages/home_page.dart';

class PopularLaundromat extends StatelessWidget {
  const PopularLaundromat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
        
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                        child: Image.asset("assets/images/cart-images/circle-back.png", width: 30,),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                    Text("Popular Laundromat Nearby", style: (TextStyle(fontSize: 18)),)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                FreshStart(),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                CleanState(),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                LagosLaundry(),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                SunshineLaundry(),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
