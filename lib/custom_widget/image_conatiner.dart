import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  final String imagePath;
  final String itemCount;
  final List<Color> gradientColors;

  ItemBox({
    required this.imagePath,
    required this.itemCount,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 250,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 26, 5, 103),
                    Color.fromARGB(255, 139, 122, 194)
                  ], // Start and end colors
                  begin: Alignment.topLeft, // Gradient start position
                  end: Alignment.bottomRight, // Gradient end position
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Text(
                itemCount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )),
    );
  }
}

class MealBoxWidget extends StatelessWidget {
  const MealBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Ensure height is constrained
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ItemBox(
            imagePath: 'images/f-removebg-preview.png',
            itemCount: '3 Items Box',
            gradientColors: const [
              Color.fromARGB(255, 237, 161, 188),
              Colors.white
            ],
          ),
          ItemBox(
            imagePath: 'images/g-removebg-preview.png',
            itemCount: '5 Items Box',
            gradientColors: const [
              Color.fromARGB(255, 144, 141, 204),
              Colors.white
            ],
          ),
          ItemBox(
            imagePath: 'images/a-removebg-preview (1).png',
            itemCount: '4 Items Box',
            gradientColors: const [
              Color.fromARGB(255, 245, 252, 182),
              Colors.white
            ],
          ),
        ],
      ),
    );
  }
}
