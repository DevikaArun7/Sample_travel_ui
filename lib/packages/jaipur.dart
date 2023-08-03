import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/2_planyourtrip.dart';

class JaipurPage extends StatefulWidget {
  const JaipurPage({super.key});

  @override
  State<JaipurPage> createState() => _JaipurPageState();
}

class _JaipurPageState extends State<JaipurPage> {
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
               child: Text("Jaipur",style: TextStyle(fontSize: 25,color:Colors.white),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Jaipur, known as the Pink City, is a vibrant city in Rajasthan, India. Founded in 1727, it is famous for its well-preserved architectural wonders. The Hawa Mahal is a stunning palace with a unique honeycomb facade, while the City Palace showcases a blend of Rajput and Mughal styles. The Amber Fort, situated on a hilltop, offers breathtaking views. Jaipur's bustling bazaars are a shopper's paradise. The city hosts colorful festivals like the Jaipur Literature Festival and Teej Festival, showcasing its rich culture. With its royal history, captivating architecture, and cultural experiences, Jaipur is a must-visit destination.",style: TextStyle(fontSize: 17),),
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