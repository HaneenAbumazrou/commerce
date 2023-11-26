import 'package:flutter/material.dart';
import 'OTP.dart';
import 'modal/button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60.0),
              const Center(
                child: Text('Complete profile', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0,
                ),textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5.0),
              const Center(
                child: Text('Complete your details or continue ',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
                ),
              ),
              const Center(
                child: Text('with social media',style: TextStyle(color: Colors.grey, fontSize: 10.0),textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40.0),
              Container( //email
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller:TextEditingController(),
                  decoration: const InputDecoration(labelText: 'First name',floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      hintText: 'Enter your first name',
                      suffixIcon: Icon(Icons.account_circle_outlined, color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)),
                      )
                  ),
                ),
              ),

              const SizedBox(height: 5.0),
              Container( //email
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller:TextEditingController(),
                  decoration: const InputDecoration(labelText: 'Last name',floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      hintText: 'Enter your last name',
                      suffixIcon: Icon(Icons.account_circle_outlined, color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)),
                      )
                  ),
                ),
              ),

              const SizedBox(height: 5.0),
              Container(//password
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller:TextEditingController(),
                  decoration: const InputDecoration(labelText: 'Phone Number',floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      hintText: 'Enter your phone number',
                      suffixIcon: Icon(Icons.phone_android_sharp, color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)),
                      )
                  ),
                ),
              ),

              const SizedBox(height: 5.0),
              Container(//confirm password
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller:TextEditingController(),
                  decoration: const InputDecoration(labelText: 'Address',floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(),
                      hintText: 'Enter your phone address',
                      suffixIcon: Icon(Icons.location_on_outlined, color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(50)),
                      )
                  ),
                ),
              ),


              //Continue Button
              const SizedBox(height: 50.0),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  const OTP()));
                  },
                  child: const Text(
                    'Continue', style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),
              const Center(
                child: Text('by continuing you confirm that you agree', style: TextStyle(color: Colors.grey, fontSize: 10.0,),
                ),
              ),
              const Center(
                child: Text(' with our terms and conditions', style: TextStyle(color: Colors.grey, fontSize: 10.0,),
                ),
              ),
            ],
          ),
        ),
      ),
      ),

    );
  }
}