import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContactCard(),
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Card'),
      ),
      body: Center(
        child: Card(
          elevation: 4.0,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/lindsey.jpg'), // Replace with your image URL
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Lindsey Omoto',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Software Developer',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                ),
                const SizedBox(height: 16.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 8.0),
                    Text(
                      '(254) 737-244-014',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 8.0),
                    Text(
                      'lindseyomoto46@gmail.com',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(width: 16.0), // Space between icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                    FaIcon(FontAwesomeIcons.github, color: Colors.black),
                    SizedBox(width: 8.0),
                    Text(
                      'Lindsey-Amelia',
                      style: TextStyle(fontSize: 16.0),
                       ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Divider(), // To add a visual separation
                SizedBox(height: 16.0),
                Text(
                  'I am a passionate software developer with one year of experience in building mobile and web applications. I love working with Flutter and Dart, and I am always eager to learn new technologies and improve my skills. Lets connect and explore ways to collaborate!',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
