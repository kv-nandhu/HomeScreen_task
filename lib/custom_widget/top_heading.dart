import 'package:flutter/material.dart';
import 'package:food_box/utils/color.dart';

class nameAndLocation extends StatelessWidget {
  const nameAndLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hi, Monica!',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 10, 214)),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Text("Current location",
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                      Row(
            children: [
              Icon(Icons.location_on_outlined, color: Colors.purple),
              SizedBox(width: 4),
              Text("Hyderabad",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
              Icon(Icons.expand_more_rounded, color: Colors.grey),
            ],
          ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.play_circle_outline,color: CustomColor.blueColor(),),
                  const Text("How it works?")
                ],
              )
            ],
          ),
          
        ],
      ),
    );
  }
}