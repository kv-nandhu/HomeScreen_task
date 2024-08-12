import 'package:flutter/material.dart';

class DeliverBox extends StatelessWidget {
  const DeliverBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 226, 200, 162)
          ], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Delivery Box",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 19,
                        color: Color.fromARGB(255, 150, 94, 74),
                      ),
                      Text(
                        " Min 10 - Max 120",
                        style:
                            TextStyle(color: Colors.amber[700], fontSize: 14),
                      ),
                    ],
                  ),

                  const SizedBox(
                      height: 40), // Adds some spacing between text and the box

                  Container(
                    width: 110,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                              30), // Change this to round a different edge
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8), // Space between text and arrow
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
                width: 10), // Adds some spacing between the text and the image
            Image.asset(
              'images/e-removebg-preview.png', // Replace with the path to your image
              height: 390, // Adjust the height of the image
              width: 190, // Adjust the width of the image
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
