import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_ui/Controllers/usermodel.dart';
import 'package:sample_ui/Screens/homepage1.dart';
import 'package:sample_ui/Screens/signin.dart';

class AuthController extends GetxController{

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController loginemail = TextEditingController();
  TextEditingController loginpassword = TextEditingController();
  TextEditingController resetemail = TextEditingController();
  var loading = false.obs;

  signUp()async{
   try {
      loading.value= true;
    await auth.createUserWithEmailAndPassword(email:email.text,password:password.text);
    await addUser();
    await verifyEmail();
    Get.to(()=>HomePage());
    loading.value = false;
   } catch (e) {
     Get.snackbar("error", "$e");
     loading.value=false;
   }
  }

  addUser()async{
    UserModel user =UserModel(
      username: username.text,
      email: auth.currentUser?.email,
    );
    await db
    .collection("user")
    .doc(auth.currentUser?.uid)
    .collection("profile")
    .add(user.toMap());
  }

  signout()async{
    await auth.signOut();
  }

  signin()async{
    try {
      loading.value=true;
      await auth.signInWithEmailAndPassword(email: loginemail.text, password: loginpassword.text);
      await addUser();
      Get.to(()=>HomePage());
      loading.value=false;
    } catch (e) {
      log(e.toString());
      Get.snackbar("error", "$e");
      loading.value=false;
    }
  }

  verifyEmail()async{
    await auth.currentUser?.sendEmailVerification();
    Get.snackbar("email", "send");
  }

  resetPassword()async{
    try {
      loading.value = true;
     await auth.sendPasswordResetEmail(email:resetemail. text);
     Get.snackbar("email", "send successfully");
     Get.to(()=>SignInPage());
     loading.value = false;
    } catch (e) {
      Get.snackbar("error", "$e");
      loading.value = false;
    }
  }

}