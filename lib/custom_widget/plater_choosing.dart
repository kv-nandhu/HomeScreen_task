import 'package:flutter/material.dart';
import 'package:food_box/utils/color.dart';

class Plater_choosing extends StatelessWidget {
  const Plater_choosing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16.0),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const Text('Choose Your Platter',
           style:
               TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
                Row(
                 children: [
                   Text('Delivery Box ',
                       style: TextStyle(
                           fontWeight: FontWeight.w900, fontSize: 18,color: CustomColor.blueColor())),
                           const Row(
                             children: [
                               Text("(",style: TextStyle(color: Colors.grey),),
                               Icon(Icons.person,color: Colors.grey,size: 15,),
                               Text("Min 10 - Max 50)",style: TextStyle(color: Colors.grey),),
                             ],
                           )
                 ],
               ),
               const Text("More",style: TextStyle(color: Colors.black,fontSize: 18),),
               ]
           ),
            const Text("Best for small gathering and house-parties",style: TextStyle(color: Colors.grey),)
         ],
       ),
      
     ]),
                  );
  }
}
