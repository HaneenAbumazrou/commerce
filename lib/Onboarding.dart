import 'package:flutter/material.dart';
import 'package:commerce/modal/Onboard.dart';
import 'modal/button.dart';
import 'Register.dart';
class OnBoarding extends StatelessWidget {
  List<AssetImage> images=[
    const AssetImage('assets/images/splash_1.png'),
    const AssetImage('assets/images/splash_2.png'),
    const AssetImage('assets/images/splash_3.png'),
  ];
  int index=0;

  OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24
        ) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40.0),
            const Text('TOKOTO', style: TextStyle(color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 40.0),
            ),
            //SizedBox(height:5.0,width:0),
            const Text('Welcome to Tokoto, Lets shop!', style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 150.0),
            //call images
            CarouselDemo(),
            const SizedBox(height: 180.0),

            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Register()));
              },
              child: const Text(
                'Continue', style: TextStyle(color: Colors.white),
              ),
            ),

          ],
        ),
      ),
      ),
    );
  }
}