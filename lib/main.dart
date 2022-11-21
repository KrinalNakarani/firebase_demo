import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/Screen/homeScreen/View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}