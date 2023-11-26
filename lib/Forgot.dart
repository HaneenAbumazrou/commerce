import 'package:flutter/material.dart';
import 'modal/button.dart';


class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0,
          backgroundColor: const Color(0xffFFFBFE), leading: IconButton(
            iconSize: 30,
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),


        body: SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200.0),
              const Center(
                child: Text('Forgot Password', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ), textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5.0),
              const Center(
                child: Text('Please enter your email and we will send ',
                  style: TextStyle(color: Colors.grey, fontSize: 10.0),
                  textAlign: TextAlign.left,
                ),
              ),
              const Center(
                child: Text('you a link to return to your account',
                  style: TextStyle(color: Colors.grey, fontSize: 10.0),
                  textAlign: TextAlign.center,
                ),
              ),
              //email
              const SizedBox(height: 40.0),

              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(labelText: 'Email',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email',
                        suffixIcon: Icon(Icons.mail_outline, color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)),
                        )
                    ),
                  ),
                ),
              ),


              //Continue Button
              const SizedBox(height: 50.0),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                  },
                  child: const Text(
                    'Continue', style: TextStyle(color: Colors.white),
                  ),
                ),
              ),


              //comment
              const SizedBox(height: 70.0),
              const Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?', style: TextStyle(
                      color: Colors.grey, fontSize: 10.0),
                  ),
                  Text('Sign Up', style: TextStyle(
                      color: Colors.deepOrangeAccent, fontSize: 10.0)
                  ),
                ],

              ),
            ],
          ),

        ),

        )
    );
  }
}
