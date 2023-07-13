import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_ui/Screens/homepage.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'C:/Users/HP/Desktop/Sample ui making/sample_ui/images/travelimg.jpeg'))),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 35),
              ),
            )),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
            TextFormField(),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
            TextFormField(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text("LogIn")),
          ],
        ),
      ),
    );
  }
}
