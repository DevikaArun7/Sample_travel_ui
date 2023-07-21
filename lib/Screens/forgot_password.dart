import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_ui/Controllers/authcontroller.dart';

import 'packages/widget/text.dart';

class ForgotPasswordPage extends StatefulWidget {
   ForgotPasswordPage({super.key});
  final ctrl = Get.put(AuthController());
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0CECE),
      appBar: AppBar(
        title: Text("Forgot Password?"),
      ),
      // body:Padding(
      //   padding: const EdgeInsets.all(12.0),
      //   child: Card(
      //     color: Color.fromARGB(255, 189, 175, 134),
      //     elevation: 10,
      //     child: TextField(
      //                               decoration: InputDecoration(
      //                                 contentPadding: 
      //                                  EdgeInsets.symmetric
      //                                  (vertical:20 ),
      //                                 border: InputBorder.none,
      //                                 hintText:'email',
      //                                 icon: Padding(
      //                                   padding: EdgeInsets.all(8.0),
      //                                   child: Icon(Icons.email,color: Colors.white,),
      //                                 ),
      //                                 hintStyle:kBodyText,
      //                               ),
      //                               style: kBodyText,
      //                               textInputAction:TextInputAction.next ,
      //                             ),
      //   ),
        
      // ),
  
  body: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
            color: Color.fromARGB(255, 189, 175, 134),
            elevation: 10,
            child:Obx(() => 
             TextField(
              controller: widget.ctrl.resetemail,
                                      decoration: InputDecoration(
                                        contentPadding: 
                                         EdgeInsets.symmetric
                                         (vertical:20 ),
                                        border: InputBorder.none,
                                        hintText:'email',
                                        icon: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(Icons.email,color: Colors.white,),
                                        ),
                                        hintStyle:kBodyText,
                                      ),
                                      style: kBodyText,
                                      textInputAction:TextInputAction.next ,
                                    ),),
          ),
      ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          widget.ctrl.resetemail;
        }, child:widget.ctrl.loading.value?CircularProgressIndicator() :Text("Send Reset Link"))
    ],
  ),
    );
  }
}