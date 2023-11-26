import 'package:commerce/Welcome.dart';
import 'package:commerce/modal/button.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Scaffold(
          appBar: AppBar(
            elevation:0,
            backgroundColor: const Color(0xffFFFBFE),leading: IconButton( iconSize:30, icon: const Icon(Icons.arrow_back, color: Colors.black) ,
              onPressed: (){
                Navigator.pop(context);
              },
            ),
             title: const Text('Login Success',style: TextStyle(fontSize: 25.0,color: Colors.black38),),
            centerTitle: true,
          ),
          body: SafeArea(child:Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24
        ) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80.0),
                const Image(image:AssetImage('assets/images/success.png')),
                const SizedBox(height: 80.0),
                const Center(
                  child: Text('Login Success',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                const SizedBox(height: 80.0),
                Center(
                  child: ElevatedButton(
                    style: buttonPrimary,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Welcome()));
                    },
                    child: const Text('Back to home',style: TextStyle(color: Colors.white),),
                  ),
                )
        
        
        
              ],
        
        
            ),
        ),
          ),
        ),
      ),
    );
  }
}
