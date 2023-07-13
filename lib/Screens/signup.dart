
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/signin.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      body:
       Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/travelimg.jpeg'))),
         child: ListView(
          children:  [
             const Padding(
              padding: EdgeInsets.all(40.0),
              child: Center(child: Text("Sign Up",style: TextStyle(fontSize: 35),)),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text("Email",style: TextStyle(fontSize: 22),),
                ),
              ],
            ),
            TextFormField(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Username",style: TextStyle(fontSize:22),),
                )
              ],
            ),
            TextField(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Password",style: TextStyle(fontSize:22),),
                )
              ],
            ),
            TextFormField(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Confirm  Password",style: TextStyle(fontSize:22),),
                )
              ],
            ),
            TextFormField(), 
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text("Have an account?"),
                   GestureDetector(
                onTap: (){  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context) => SignIn()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text("LogIn",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,color: Colors.black),),
                ),
                    
              )
                ],
              ),
            ),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn(),
                    ),
                    );}, child: Text("Register")),
          ],
          
             ),
       ),
    );
  }
}