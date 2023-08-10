import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/Screens/flightdetails.dart';
import 'package:phoneauth_firebase/Screens/traindetails.dart';
import 'package:phoneauth_firebase/screens/home_screen.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Color.fromARGB(255, 153, 95, 165),
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text("Welcom to travel app",style: TextStyle(fontSize: 27,color: Colors.white),),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const TrainBookingDetails()),
              );
            }, 
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("Train Booking Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
            GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const FlightBookingDetails()),
              );
            }, 
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("Flight Booking Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
           GestureDetector(
            onTap: (){  
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const HomeScreen()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("Settings",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
           GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const HomeScreen()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("Share",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
          //  GestureDetector(
          //   onTap: (){
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder:(context) => const HomeScreen()),
          //     );
          //   },
          //   child: const Padding(
          //     padding: EdgeInsets.all(13.0),
          //     child: Text("Home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
          //   ),
          // ),
          //  GestureDetector(
          //   onTap: (){
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder:(context) => const HomeScreen()),
          //     );
          //   },
          //   child: const Padding(
          //     padding: EdgeInsets.all(13.0),
          //     child: Text("Our Packages",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
          //   ),
          // ),
          //  GestureDetector(
          //   onTap: (){
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder:(context) => const HomeScreen()),
          //     );
          //   },
          //   child: const Padding(
          //     padding: EdgeInsets.all(13.0),
          //     child: Text("Book Train",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
          //   ),
          // ),
          //  GestureDetector(
          //   onTap: (){  
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder:(context) => HomeScreen()),
          //     );
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.all(13.0),
          //     child: Text("Book Hotels",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
          //   ),    
          // )
        ],
      ),
    );
  }
}