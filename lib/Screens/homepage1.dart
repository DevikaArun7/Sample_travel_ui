

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_ui/Screens/drawer.dart';
import 'package:sample_ui/Screens/our_packages.dart';
import 'package:sample_ui/Screens/signin.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    log(auth.currentUser.toString());
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavBar(),
      backgroundColor: const Color(0xFFC0CECE),
     appBar: AppBar(
         toolbarHeight: 100,
         iconTheme:IconThemeData(color: Colors.amber) ,
         elevation: 0.0,
         backgroundColor: const Color(0xFFC0CECE),
         flexibleSpace: FlexibleSpaceBar(
          //  title: Padding(
          //    padding: const EdgeInsets.only(left: 20.0,right: 120),
          //    child: Text("What Would you like to find?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 23),),
             
          //  ),
          title: Row(
            children: [
              Text("What Would you\n like to find?",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 23),),
              TextButton(
                onPressed: ()async{
                await auth.signOut();
                  Get.offAll(()=>SignInPage());
                }, 
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white,fontSize: 20),))
            ],
          ),
         ),
       ),
      body: ListView(
        children: [
          auth.currentUser!.emailVerified
          ?SizedBox(height: 1,
          )
          :Text("${auth.currentUser?.email!}not verified"),

          SizedBox(
            height: 150,
            ),
          Text(auth.currentUser?.email ?? ''),
          Text(auth.currentUser !.emailVerified
          ?"email verified"
          :"email not verified"),

         Stack(
          children: [
            Container(
              height: 500,
              width: 400,
              // height: MediaQuery.of(context).size.width,
             
        
            
              
            ),
           
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), ),
                          elevation: 20,
                         
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Delhi.jpeg",fit: BoxFit.cover,
                             ),
                              SizedBox(
                                height:50,
                                width: 500,                                                   
                              ),
                              
                            
                            ],
                          ),
                        ),
                        ),
                        SizedBox(height: 20,),
                         Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), ),
                          elevation: 20,
                         
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("C:/Users/HP/Desktop/Sample ui making/sample_ui/images/Hampi.jpeg",fit: BoxFit.cover,
                             ),
                              SizedBox(
                                height:50,
                                width: 500,                                                   
                              ),
                              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OurPackages(),
                  ),
                  );
                 }, child: Text("See Our Packages"))
                            
                            ],
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                    
              ),
            
          ],
         )
        ],
        
      ),
     
    );
  }
}