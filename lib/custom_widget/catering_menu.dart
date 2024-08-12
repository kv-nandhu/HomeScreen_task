import 'package:flutter/material.dart';

class CateringMenus extends StatelessWidget {
  const CateringMenus({
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
             const Row(
               children: [
                 Text('Catering Menus',
                     style: TextStyle(
                         fontWeight: FontWeight.bold, fontSize: 18,color: Colors.blue)),
                         Row(
                           children: [
                             Text("(",style: TextStyle(color: Colors.grey),),
                             Icon(Icons.person,color: Colors.grey,),
                             Text("Min 200)",style: TextStyle(color: Colors.grey),),
                           ],
                         )
               ],
             ),
             IconButton(onPressed: (){}, icon: const Icon(Icons.expand_more_outlined))
           ],
         ),
          Text("Best for wedding Corparate Event, Birthdays etc",style: TextStyle(color: Colors.grey),)
       ],
     ),
                  );
  }
}
