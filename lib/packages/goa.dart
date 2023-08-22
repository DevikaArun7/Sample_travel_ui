
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/both_booking.dart';
import 'package:phoneauth_firebase/widgets/custom_button.dart';

class GoaPage extends StatefulWidget {
  const GoaPage({super.key});

  @override
  State<GoaPage> createState() => _GoaPageState();
}

class _GoaPageState extends State<GoaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.purple,
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             SizedBox(
              width: 400,
              height: 200,
            //   decoration: const BoxDecoration(
            //    image: DecorationImage(image: AssetImage("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Goa.jpeg"))
            //  ),
              child: ListView(
              children: [
                Image.asset("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/goa img3.jpeg"),
                Image.asset("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/goa img2.jpeg"),
              ],
            ),
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("Goa",style: TextStyle(fontSize: 25,color:Colors.black),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Goa, located on the western coast of India, is a popular beach destination known for its vibrant atmosphere and Portuguese influence. It boasts stunning sandy beaches like Calangute, Baga, and Anjuna, perfect for sunbathing and water sports. Goa's vibrant nightlife is legendary, with numerous clubs, bars, and beach parties. The state's colonial past is evident in its architecture, such as the Basilica of Bom Jesus and the Fort Aguada. Goa also offers a delectable culinary scene, with a fusion of Indian and Portuguese flavors. It is a paradise for beach lovers, party enthusiasts, history buffs, and foodies alike.",style: TextStyle(fontSize: 17),),
             ),
             
              CustomButton(text: "Book This Trip", onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const BothBooking()),
              );})
           ],
         ),
       )
    );
  }
}