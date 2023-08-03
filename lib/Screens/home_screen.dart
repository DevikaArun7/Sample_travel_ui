import 'package:flutter/material.dart';
import 'package:phoneauth_firebase/provider/auth_provider.dart';
import 'package:phoneauth_firebase/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

import 'ourpackages.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(""),
        actions: [
          IconButton(
            onPressed: () {
              ap.userSignOut().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                    ),
                  );
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // children: [
          // CircleAvatar(
          //   backgroundColor: Colors.purple,
          //   backgroundImage: NetworkImage(ap.userModel.profilePic),
          //   radius: 50,
          // ),
          // const SizedBox(height: 20),
          // Text(ap.userModel.name),
          // Text(ap.userModel.phoneNumber),
          // Text(ap.userModel.email),
          // Text(ap.userModel.bio),
        // ],
         children: [
          const Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // CircleAvatar(
                //   backgroundColor: Colors.purple,
                //   backgroundImage: NetworkImage(ap.userModel.profilePic),
                //   radius:50 ,
                // ),
                // const SizedBox(height: 20,),
                // Text(ap.userModel.name),
                // Text(ap.userModel.phoneNumber),
                // Text(ap.userModel.email),
                // Text(ap.userModel.bio),
              ],
            ) ,
          ),
          // auth.currentUser!.emailVerified
          // ?SizedBox(height: 1,
          // )
          // :Text("${auth.currentUser?.email!}not verified"),

          const SizedBox(
            height: 150,
            ),
          // Text(auth.currentUser?.email ?? ''),
          // Text(auth.currentUser !.emailVerified
          // ?"email verified"
          // :"email not verified"),

         Stack(
          children: [
            const SizedBox(
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
                        // child: Padding(
                        //   padding: const EdgeInsets.all(15.0),
                        //   child: Column(
                        //     mainAxisSize: MainAxisSize.min,
                        //     children: [
                        //       Image.asset("C:/Users/HP/Downloads/phoneauth_firebase/phoneauth_firebase/assets/images/Delhi.jpeg",fit: BoxFit.cover,
                        //      ),
                        //       const SizedBox(
                        //         height:50,
                        //         width: 500,                                                   
                        //       ),
                              
                            
                        //     ],
                        //   ),
                        // ),
                        ),
                        const SizedBox(height: 20,),
                         Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), ),
                          elevation: 20,
                         
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("C:/Users/HP/Downloads/phoneauth_firebase/phoneauth_firebase/assets/images/Hampi.jpeg",fit: BoxFit.cover,
                             ),
                              const SizedBox(
                                height:50,
                                 width: 500,                                                   
                              ),
                              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const OurPackages(),
                  ),
                  );
                 }, child: const Text("See Our Packages"))
                            
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
      )),
    );
  }
}
