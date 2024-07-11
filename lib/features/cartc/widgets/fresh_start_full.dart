import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/features/onboardingFirstSet/custom_button.dart';

class FreshStartFull extends StatelessWidget {
  const FreshStartFull({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Image.asset("assets/images/cart-images/customer.png"),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("FreshStart Laundry", style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 15,),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          Text("4.5", style: TextStyle(color: Colors.black54),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Row(
                  children: [
                    Image.asset("assets/images/cart-images/location.png", width: 15,),
                    SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                    Text("23, Adeola Odeku Street, Victria Island, Lagos", style: TextStyle(color: Colors.grey),),

                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/cart-images/phone.png", width: 15,),
                        SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                        Text("+234808112222",  style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                    Row(
                      children: [
                        Image.asset("assets/images/cart-images/letter.png", width: 15,),
                        SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                        Text("info@freshstartlaundry.com",  style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                Divider(color: Colors.grey,),
                SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                Text("Description", style: TextStyle(fontSize: 18),),
                Divider(color: Colors.grey,),
                SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                Text("FreshStart Laundry is a state-of-the-art laundromat "
                    "in the heart of Victoria Island, Lagos. Our mission is to provide high-"
                    "quality laundry services with a focus on convenience,"
                    "cleanliness, and customer satisfaction. Our modern"
                    "equipment and trained staff ensure your clothes are treated"
                    "with care and attention to detail.",
                textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                Text("Available Hours", style: TextStyle(fontSize: 18),),
                Divider(color: Colors.grey,),
                SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                Row(
                  children: [
                    Text("Monday - Saturday - ", style: TextStyle(fontSize: 18),),
                    Text("(8am - 8pm) ", style: TextStyle(fontSize: 14, color: Colors.grey),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                Row(
                  children: [
                    Text("Sunday - ", style: TextStyle(fontSize: 18),),
                    Text("(10am - 6pm) ", style: TextStyle(fontSize: 14, color: Colors.grey),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                    title: "Book Now",
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 28),
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    onPressed: (){},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
