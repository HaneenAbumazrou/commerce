
import 'package:flutter/material.dart';
import 'modal/button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Forgot.dart';
import 'Home.dart';

class Welcome extends StatefulWidget {
  Welcome({super.key});
  List<AssetImage> images=[
    const AssetImage('assets/icons/google-icon.svg'),
    const AssetImage('assets/icons/facebook-2.svg'),
    const AssetImage('assets/icons/twitter.svg'),
  ];
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool _isChecked = false;
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
              const SizedBox(height: 60.0),
              const Center(
                child: Text('Welcome Back', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ), textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5.0),
              const Center(
                child: Text('Sign in with your email and password  ',
                  style: TextStyle(color: Colors.grey, fontSize: 10.0),
                  textAlign: TextAlign.left,
                ),
              ),
              const Center(
                child: Text('or continue with social media',
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

              //password
              const SizedBox(height: 5.0),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(labelText: 'Password',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password',
                        suffixIcon: Icon(Icons.lock, color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)),
                        )
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(value:_isChecked, onChanged: (value){
                    setState((){
                      _isChecked=value!;
                    });
                  },
                    checkColor: Colors.deepOrangeAccent,),


                  const Text('Remember me', style: TextStyle(color: Colors.grey),textAlign: TextAlign.left),
                  const SizedBox(width:100.0),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const Forgot()));
                      },
                      child: const Text('Forgot password', style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline),textAlign: TextAlign.right,)

                  ),
                ],
              ),

              //confirm password

              //Continue Button
              const SizedBox(height: 50.0),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text(
                    'Continue', style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              //Icons:gmail,Fb,..
              const SizedBox(height: 20.0),
              Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/google-icon.svg'),),
                    const SizedBox(height: 10.0),
                    IconButton(onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/facebook-2.svg'),),
                    const SizedBox(height: 10.0),
                    IconButton(onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/twitter.svg'),),
                    const SizedBox(height: 10.0),
                  ],
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
