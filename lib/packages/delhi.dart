
import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/screens/2_planyourtrip.dart';

class DelhiPage extends StatefulWidget {
  const DelhiPage({super.key});

  @override
  State<DelhiPage> createState() => _DelhiPageState();
}

class _DelhiPageState extends State<DelhiPage> {
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
               child: Text("Delhi",style: TextStyle(fontSize: 25,color:Colors.white),),
             ),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Text("Delhi, the capital city of India, is a bustling metropolis that seamlessly blends the old and the new. It is known for its rich history, architectural marvels, and vibrant culture. Must-visit attractions include the magnificent Red Fort, Jama Masjid, and India Gate. Delhi is a food lover's paradise with its diverse culinary scene, offering everything from street food to fine dining. The city is also a shopper's delight with bustling markets like Chandni Chowk and modern shopping malls. Delhi's charm lies in its contrasting landscapes, where ancient monuments coexist with modern developments, making it a captivating destination for travelers.",style: TextStyle(fontSize: 17),),
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