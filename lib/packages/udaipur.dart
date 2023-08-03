
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/2_planyourtrip.dart';

class UdaipurPage extends StatefulWidget {
  const UdaipurPage({super.key});

  @override
  State<UdaipurPage> createState() => _UdaipurPageState();
}

class _UdaipurPageState extends State<UdaipurPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFC0CECE),
       appBar: AppBar(
        
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             Container(
              width: 400,
              height: 200,
              decoration: const BoxDecoration(
               image: DecorationImage(image: AssetImage(""))
             ),
             ),
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("Udaipur",style: TextStyle(fontSize: 25,color:Colors.white),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Udaipur, often referred to as the Venice of the East, is a captivating city in the state of Rajasthan, India. It is renowned for its magnificent palaces, serene lakes, and rich history. The City Palace, situated on the banks of Lake Pichola, is a splendid architectural masterpiece. Udaipur's picturesque Lake Palace, located in the middle of Lake Pichola, is a must-visit attraction. The city's vibrant bazaars offer traditional Rajasthani handicrafts and artwork. Udaipur's romantic ambiance, stunning landscapes, and regal charm make it a popular destination for couples and travelers seeking a royal experience.",style: TextStyle(fontSize: 17),),
             ),
             ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const PlanYourTrip2()),
              );
              }, child: const Text("Book This Tour"))
           ],
         ),
       )
    );
  }
}