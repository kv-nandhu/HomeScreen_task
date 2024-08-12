import 'package:flutter/material.dart';

Widget buildHorizontalCard(
    String title, String subtitle, String imageName, Color color, Color hai) {
  return Container(
    height: 300,
    width: 170,
    margin: const EdgeInsets.only(left: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: [
          color.withOpacity(0.5),
          color.withOpacity(0.10),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(color: hai),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 20, // Adjust the size of the circle (2 times the radius)
                backgroundColor: hai, // Fill color of the circle
                child: const Icon(
                  Icons.arrow_forward, // The arrow icon
                  color: Color.fromARGB(255, 248, 245, 245), // Icon color
                ),
              ),
            ],
          ),
        ),
        const Spacer(), // Pushes the image to the bottom
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          child: Image.asset(
            'images/$imageName',
            fit: BoxFit.cover,
            height: 131, // Adjust the image height to avoid overflow
            width: double.infinity, // Ensure the image width matches the container
          ),
        ),
      ],
    ),
  );
}


class DeliveryBoxWidget extends StatelessWidget {
  const DeliveryBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildHorizontalCard(
              'Meal Boxes',
              'Min 10 Guests',
              'b-removebg-preview.png',
              Color.fromARGB(255, 211, 196, 225),
              Color.fromARGB(255, 100, 45, 196)),
          buildHorizontalCard(
              'Catering',
              'Min 120 Guests',
              'd-removebg-preview.png',
              const Color.fromARGB(255, 198, 83, 121),
              Colors.pink),
        ],
      ),
    );
  }
} 