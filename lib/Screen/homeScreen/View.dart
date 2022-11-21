import 'package:firebase_demo/database/firebase.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtEmail,
                decoration: InputDecoration( hintText: "Email"),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: txtPassword,
                decoration: InputDecoration(hintText: "Password"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){
                singUp(txtEmail.text, txtPassword.text);
              }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    ),));
  }
}
