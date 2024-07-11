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
      appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child:
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                     shape: BoxShape.circle,
                    ),
                    //padding: EdgeInsets.all(4),
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
              ),
            ),

            title: Row(
              children: [
                //SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                Text("Popular Laundromat Nearby", style: (TextStyle(fontSize: 18)),),
              ],
            )

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
               // SizedBox(height: MediaQuery.of(context).size.height*0.02,),
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
