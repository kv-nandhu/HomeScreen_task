import 'package:flutter/material.dart';
import 'package:food_box/custom_widget/catering_menu.dart';
import 'package:food_box/custom_widget/delivery_box.dart';
import 'package:food_box/custom_widget/image_conatiner.dart';
import 'package:food_box/custom_widget/meal_box.dart';
import 'package:food_box/custom_widget/meal_catering.dart';
import 'package:food_box/custom_widget/menu_card.dart';
import 'package:food_box/custom_widget/offer_box.dart';
import 'package:food_box/custom_widget/plater_choosing.dart';
import 'package:food_box/custom_widget/top_heading.dart';
// ignore: depend_on_referenced_packages
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(bottom: 70), // Adjust this value to fit the height of the bottom navigation bar
              children: const [
                // Your custom widgets here
                nameAndLocation(),
                OfferContainerWidget(),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Start Crafting',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
                SizedBox(height: 20),
                DeliverBox(),
                SizedBox(height: 10),
                DeliveryBoxWidget(),
                SizedBox(height: 20),
                Plater_choosing(),
                SizedBox(height: 10),
                DeliveryBox3Widget(),
                SizedBox(height: 10),
                MealBox(),
                MealBoxWidget(),
                CateringMenus(),
                CateringMenusWidget(),
                SizedBox(height: 50),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Container(
                height: 120, // Adjust height based on your design
                child: FloatingNavbar(
                  backgroundColor: const Color.fromARGB(255, 253, 254, 255),
                  // selectedBackgroundColor: const Color.fromARGB(255, 191, 198, 208),
                  selectedItemColor: const Color.fromARGB(255, 4, 4, 4),
                  unselectedItemColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                  borderRadius: 20,
                  items: [
                    FloatingNavbarItem(
                      icon: Icons.person,
                      title: 'Profile',
                    ),
                    FloatingNavbarItem(
                      icon: Icons.image,
                      customWidget: CircleAvatar(
                        backgroundImage: AssetImage('images/bottom.jpg'), // Replace with your image path
                        radius: 24,
                      ),
                    ),
                    FloatingNavbarItem(
                      icon: Icons.food_bank_outlined,
                      title: 'Orders',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
