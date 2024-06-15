import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 80), // Increased space between top and image
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/images/logos.png',
                      width: 320, // Increased width of the image
                      height: 320, // Increased height of the image
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0.0, // Positioned at the bottom edge of the stack
                    left: 0,
                    right: 0,
                    child: Text(
                      'kisaan Grocery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0, // Increased font size
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Changed text color to green
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40), // Increased space between image and fields
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter phone/email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20), // Increased space between email and password
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30), // Increased space below password field
              SizedBox(
                width: 120, // Set width of the buttons
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/products');
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12)), // Adjust padding
                    backgroundColor: MaterialStateProperty.all(Colors.blue), // Button background color
                    foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
                  ),
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 20), // Increased space between login button and sign up button
              SizedBox(
                width: 60, // Set width of the buttons
                child: TextButton(
                  onPressed: () {
                    // Navigate to sign up screen
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12)), // Adjust padding
                    foregroundColor: MaterialStateProperty.all(Colors.blue), // Text color
                  ),
                  child: Text('Sign Up'),
                ),
              ),
              SizedBox(height: 80), // Increased space between sign up button and "Powered by farmers" text
              Text(
                'Powered by farmers',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.orange, // Changed text color to orange
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
