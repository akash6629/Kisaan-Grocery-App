import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'product_list_screen.dart';

void main() {
  runApp(KisaanGroceryApp());
}

class KisaanGroceryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'kisaan Grocery',
      theme: ThemeData(
        primaryColor: Colors.green[300], // Set primary color of the app
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[300], // Set app bar background color
          titleTextStyle: TextStyle(
            color: Colors.black87, // Set app bar title color
            fontSize: 30.0, // Set app bar title font size
            fontWeight: FontWeight.bold, // Set app bar title font weight
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/products': (context) => ProductListScreen(),
      },
    );
  }
}
