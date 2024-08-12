import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';


class OfferContainer extends StatelessWidget {
  const OfferContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 97, 97, 180),
            Color(0xFF5E34D8)
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
                    "Enjoy your first \norder, the taste of \nour delicious food!'",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                      height: 10), // Adds some spacing between text and the box
                   // Adds some spacing between text and the box
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      color: const Color.fromARGB(
                          255, 249, 184, 4), // Color of the dotted line
                      strokeWidth: 1,
                      dashPattern: const [6, 3],
                      radius: const Radius.circular(4),
                      child: Container(
                        height: 29,
                        width: 150,
                        alignment: Alignment.center,
                        child: const Text(
                          'FIRSTPLATE01', // The text inside the square box
                          style:
                              TextStyle(color: Color.fromARGB(255, 249, 184, 4)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: 10), // Adds some spacing between the text and the image
            Image.asset(
              'images/Layer 2.png', // Replace with the path to your image
              height: 150, // Adjust the height of the image
              width: 180,  // Adjust the width of the image
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}



class OfferContainerWidget extends StatelessWidget {
  const OfferContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190, // Height matches the OfferContainer
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 155,
              width: 385, // Define a width for the OfferContainer
              child: OfferContainer(),
            ),
            Container(
              height: 155,
              width: 385, // Define a width for the OfferContainer
              child: OfferContainer(),
            ),
            // Add other OfferContainer widgets if needed
          ],
        ),
      ),
    );
  }
}
