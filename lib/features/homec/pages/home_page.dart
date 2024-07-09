import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/features/homec/pages/home_view.dart';

import '../../cartc/pages/cart_view.dart';
import '../../messagec/pages/message_view.dart';
import '../../profilec/pages/profile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var listOfViews = [
    const HomeView(),
    const ProfileView(),
    const CartView(),
    const MessageView(),
  ];

  var selectedIndex = 0;
  bool isShowingPopularLaundromat = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: listOfViews,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF0F26A6),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
            label: "Profile",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_sharp),
            label: "Message",
          ),



        ],

      ),
    );
  }
}
