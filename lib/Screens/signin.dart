
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_ui/Controllers/authcontroller.dart';
import 'package:sample_ui/Screens/forgot_password.dart';
import 'package:sample_ui/Screens/homepage1.dart';
import 'package:sample_ui/Screens/packages/widget/backgroundimage.dart';
import 'package:sample_ui/Screens/packages/widget/text.dart';
import 'package:sample_ui/Screens/signup.dart';


class SignInPage extends StatelessWidget {
   SignInPage({super.key});

  final ctrl = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: Center(
                    child: Text("SignIn",style: kHeading,),
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Container(
                              decoration:BoxDecoration(
                                color: Colors.grey[600]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20)
                              ) ,
                              child:  TextField(
                                controller: ctrl.loginemail,
                                decoration: const InputDecoration(
                                  contentPadding: 
                                   EdgeInsets.symmetric
                                   (vertical:20 ),
                                  border: InputBorder.none,
                                  hintText:'Email',
                                  icon: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.mail_outline,color: Colors.white,),
                                  ),
                                  hintStyle:kBodyText,
                                ),
                                style: kBodyText,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction:TextInputAction.next ,
                              ),
                            ),
                            SizedBox(height: 30,),
                             Container(
                              decoration:BoxDecoration(
                                color: Colors.grey[600]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20)
                              ) ,
                              child:   TextField(
                                controller: ctrl.loginpassword,
                                decoration: const InputDecoration(
                                  contentPadding: 
                                   EdgeInsets.symmetric
                                   (vertical:20 ),
                                  border: InputBorder.none,
                                  hintText:'Password',
                                  icon: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.lock_open,color: Colors.white,),
                                  ),
                                  hintStyle:kBodyText,
                                ),
                                obscureText: true,
                                style: kBodyText,
                                textInputAction:TextInputAction.done ,
                              ),
                              
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(25.0),
                            //   child: Text("Create Account",style: kBodyText),
                            // ),
                            TextButton(onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                 }, child: Column(
                   children: [
                     Text("Create Account",style: TextStyle(color:Colors.white),),
                     TextButton(onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage(),
                      ),
                    );
                 }, child: Text("Forgot Password",style: TextStyle(color:Colors.white),))
                   ],
                 )),
                            ElevatedButton(onPressed: ()async{
                              ctrl.signin();
                               Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>const HomePage(),
                      ),
                    );
                 }, child:Obx(() => 
                  ctrl.loading.value?CircularProgressIndicator():
                  Text("LogIn"))),
                          ],
                        ),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

