import 'package:flutter/material.dart';
import 'modal/button.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

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
    ),
           body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             const SizedBox(height: 16),
             const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/Profile Image.png'),
            ),
             const SizedBox(height: 16.0),
             const Text(
              'Mohammad Abumazrou',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Username: mohammad_maz'),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: Mohammad@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone: 0791846461'),
            ),
            const ListTile(
              leading: Icon(Icons.lock),
              title: Text('Password: ••••••'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfilePage ()));
              },
              child: const Text('Edit Profile',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ],
        ),
      ),
    ),
        ),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

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
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Edit your profile information:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'New Password'),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(style: buttonPrimary,
              onPressed: () {
                // Implement logic to save edited profile
                Navigator.pop(context); // Navigate back to the profile page
              },
              child: const Text('Save Changes',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ],
        ),
      ),
    ),
        ),
    );
  }
}
