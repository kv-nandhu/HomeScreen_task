import 'package:flutter/material.dart';
import 'package:food_box/custom_widget/see_all.dart';
import 'package:food_box/utils/color.dart';

class MenuCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final Color color;

  MenuCard({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,),
      child: Container(
        width: 300, // Set the width you want
        height: 420, // Set the height you want
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), // Rounded corners
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15), // Ensure content respects the rounded corners
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: Image.asset(
                      'images/h.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 123, 73, 210),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Popular', // Add your text here
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset('images/veg-logo-png-6.png'),
                    ),
                    const SizedBox(width: 5),
                    Text(title, style:  TextStyle(fontWeight: FontWeight.bold,)),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 20,
                endIndent: 10,
                indent: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(subtitle,style:TextStyle(color: CustomColor.blueColor(),fontSize: 17,fontWeight: FontWeight.bold)),
                    const Text("see all", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 20,
                endIndent: 10,
                indent: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Start at",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(price),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Text(
                          " 10 - 600",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5),
                        Text("⭐"),
                        Text(" ₹299", style: TextStyle(color: CustomColor.blueColor(),fontSize: 20)),
                        Text(" / Person ", style: TextStyle(color: Colors.grey)),
                        Icon(Icons.arrow_downward_outlined, color: Color.fromARGB(255, 4, 95, 28)),
                        Text("20%", style: TextStyle(color: Color.fromARGB(255, 4, 95, 28))),
                      ],
                    ),
                    Row(
                      children: [
                        Text("with Dynamic Price for ", style: TextStyle(color: CustomColor.blueColor())),
                        Text("100 Guests"),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class DeliveryBox3Widget extends StatelessWidget {
  const DeliveryBox3Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390, // Adjust height to accommodate MenuCard
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MenuCard(
              title: 'Punjabi Special Menu',
              subtitle: '6 Categories & 9 Items',
              price: '₹299',
              color: Colors.green),
          MenuCard(
              title: 'Meal Box',
              subtitle: '6 Categories & 9 Items',
              price: '₹299',
              color: Colors.orange),
          MenuCard(
              title: 'Catering Menus',
              subtitle: '6 Categories & 9 Items',
              price: '₹299',
              color: Colors.green),
          const SeeAllConatiner(),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}



class CateringMenusWidget extends StatelessWidget {
  const CateringMenusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390, // Adjust height to accommodate MenuCard
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MenuCard(
              title: 'Punjabi Special Menu',
              subtitle: '12 Categories & 40 Items',
              price: '₹219',
              color: Colors.green),
          MenuCard(
              title: 'Meal Box',
              subtitle: '12 Categories & 40 Items',
              price: '₹219',
              color: Colors.orange),
          MenuCard(
              title: 'Catering Menus',
              subtitle: '12 Categories & 40 Items',
              price: '₹219',
              color: Colors.green),
          const SeeAllConatiner(),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}

