import 'package:commerce/Login.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'modal/button.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: const Color(0xffFFFBFE),leading: IconButton( iconSize:30, icon: const Icon(Icons.arrow_back, color: Colors.black) ,
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      ),
      body: SafeArea(child:Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 10),
        child:  Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60.0),
              const Text('OTP Verification', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0,
              ),textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5.0),
              const Text('We sent your code to +1 898 860*** ',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
              ),
              const Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('This code will expire in ',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
                    ),
                    Text('00:13', style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 7.0),textAlign: TextAlign.center,),
                  ],
                ),
              ),
              const SizedBox(height:60.0),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 40,
                style: const TextStyle(
                    fontSize: 17
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (pin) {
                },
              ),
              const SizedBox(height:100.0),
              ElevatedButton(
                style: buttonPrimary,
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const Login ()));

                },
                child: const Text(
                  'Continue', style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 30.0),
              const Text('Resend OTP', style: TextStyle(color: Colors.grey, fontSize: 10.0,decoration: TextDecoration.underline),
              ),


            ],
          ),
        ),
      ),
      ),
    );
  }
}