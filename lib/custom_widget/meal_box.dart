import 'package:flutter/material.dart';
import 'package:food_box/utils/color.dart';

class MealBox extends StatelessWidget {
  const MealBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16.0),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
              Row(
               children: [
                 Text('Meal Box',
                     style: TextStyle(
                         fontWeight: FontWeight.bold, fontSize: 18,color: CustomColor.blueColor(),)),
                         Row(
                           children: [
                             Text("( ",style: TextStyle(color: Colors.grey),),
                             Icon(Icons.person,color: Colors.grey,),
                             Text("Min 10 )",style: TextStyle(color: Colors.grey),),
                           ],
                         )
               ],
             ),
            Text("More",style: TextStyle(fontSize: 18),)
           ],
         ),
          Text("Indivitually packed meal boxes of happiness!",style: TextStyle(color: Colors.grey),)
       ],
     ),
                  );
  }
}
