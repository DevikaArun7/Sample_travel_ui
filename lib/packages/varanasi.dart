
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/both_booking.dart';
import 'package:phoneauth_firebase/widgets/custom_button.dart';

class VaranasiPage extends StatefulWidget {
  const VaranasiPage({super.key});

  @override
  State<VaranasiPage> createState() => _VaranasiPageState();
}

class _VaranasiPageState extends State<VaranasiPage> {
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
            //    image: DecorationImage(image: AssetImage("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Varanasi.jpeg"))
            //  ),
            child: ListView(
              children: [
                Image.asset("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/Varanasi.jpeg"),
                Image.asset("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/varanasi img2.jpeg"),
                Image.asset("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/varanasi img3.jpeg"),
                Image.asset("C:/Users/HP/Downloads/Travel-App-Roaming-Routes-master/Travel-App-Roaming-Routes-master/assets/images/varanasi img4.jpeg"),
              ],
            ),
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("Varanasi",style: TextStyle(fontSize: 25,color:Colors.black),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Varanasi, also known as Kashi or Benaras, is a sacred city located on the banks of the River Ganges in Uttar Pradesh, India. It is one of the oldest inhabited cities, renowned for its ghats and spiritual significance. The Dashashwamedh Ghat hosts the famous Ganga Aarti ceremony, a captivating ritual held every evening. The Kashi Vishwanath Temple, dedicated to Lord Shiva, is a revered pilgrimage site. Varanasi's narrow lanes, ancient temples, and bustling markets offer a glimpse into rich cultural heritage. The city is a hub of classical music, dance performances, and traditional silk weaving. Exploring Varanasi is a spiritual and immersive experience, where life and rituals unfold along the sacred Ganges River.",style: TextStyle(fontSize: 17),),
             ),
            
              CustomButton(text: "Book This Trip", onPressed: (){
                 Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const BothBooking()),
              );
              })
           ],
         ),
       )
    );
  }
}