
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_ui/Controllers/authcontroller.dart';
import 'package:sample_ui/Screens/homepage1.dart';
import 'package:sample_ui/Screens/packages/widget/backgroundimage.dart';
import 'package:sample_ui/Screens/packages/widget/text.dart';
import 'package:sample_ui/Screens/signin.dart';


class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});

  final ctrl = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: ListView(
              children: [
                Container(
                  height: 200,
                  child: Center(
                    child: Text("SignUp",style: kHeading,),
                    ),
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
                                controller:ctrl.email ,
                                decoration: InputDecoration(
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
                              child:  TextField(
                                 controller:ctrl.username,
                                decoration: const InputDecoration(
                                  contentPadding: 
                                   EdgeInsets.symmetric
                                   (vertical:20 ),
                                  border: InputBorder.none,
                                  hintText:'Username',
                                  icon: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.person,color: Colors.white,),
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
                              child:  TextField(
                                controller: ctrl.password,
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
                            SizedBox(height:30 ,),
                            Container(
                              decoration:BoxDecoration(
                                color: Colors.grey[600]!.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(20)
                              ) ,
                              // child: const TextField(
                              //   decoration: InputDecoration(
                              //     contentPadding: 
                              //      EdgeInsets.symmetric
                              //      (vertical:20 ),
                              //     border: InputBorder.none,
                              //     hintText:'Conform Password',
                              //     icon: Padding(
                              //       padding: EdgeInsets.all(8.0),
                              //       child: Icon(Icons.lock_outline,color: Colors.white,),
                              //     ),
                              //     hintStyle:kBodyText,
                              //   ),
                              //   style: kBodyText,
                              //   keyboardType: TextInputType.emailAddress,
                              //   textInputAction:TextInputAction.next ,
                              // ),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Center(child: Text("Have an account?",style: kBodyText,)),
                    TextButton(onPressed: (){ Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ),
                    );
                 }, child: const Text("Login",style:TextStyle(fontSize: 15,),)),
                  Obx(
                    ()=> Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(onPressed: (){
                       ctrl.signUp();
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>const HomePage(),
                        ),
                      );
                                   }, child:ctrl.loading.value?CircularProgressIndicator(color: Colors.white,):Text("SignUp")),
                    ),
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

