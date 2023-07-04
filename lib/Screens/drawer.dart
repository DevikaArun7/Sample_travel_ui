import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/mybooking.dart';
import 'package:sample_ui/Screens/signin.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Colors.blueGrey,
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
                MaterialPageRoute(builder:(context) => MyBookingPage()),
              );
            }, 
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("My Booking",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
           GestureDetector(
            onTap: (){  
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const SignIn()),
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
                MaterialPageRoute(builder:(context) => const SignIn()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("Share",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
           GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const SignIn()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("Home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
           GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const SignIn()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("Our Packages",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
           GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => const SignIn()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("Book Train",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),
          ),
           GestureDetector(
            onTap: (){  
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) => SignIn()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text("Book Hotels",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.white),),
            ),    
          )
        ],
      ),
    );
  }
}