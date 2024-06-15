import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Initialize animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Define animation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    // Start animation
    _controller.forward();

    // Redirect to login screen after 5 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            child: Image.asset('assets/images/logos.png'),
          ),
          Positioned(
            bottom: 300.0, // Adjust this value as needed
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Opacity(
                  opacity: _animation.value,
                  child: Center(
                    child: Text(
                      'kisaan Grocery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green, // Change text color to green
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
