import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';
import 'pages/login_page.dart';
import 'pages/phone_verification_page.dart';
import 'pages/verify_code_page.dart';
import 'pages/profile_setup_page.dart';
import 'pages/success_page.dart';
import 'pages/home_page.dart'; // Ensure this is properly imported
import 'pages/signup_page.dart'; // Ensure the correct path


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinTrack App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Set the initial route to the Welcome Page
      routes: {
        '/': (context) => WelcomePage(),
        '/signup_page': (context) => SignupPage(),
        '/login_page': (context) => LoginPage(),
        '/phone_verification_page': (context) => PhoneVerificationPage(),
        '/verify_code_page': (context) => VerifyCodePage(phoneNumber: '1234567890', verificationId: 'id'), // Provide necessary parameters
        '/profile_setup_page': (context) => ProfileSetupPage(),
        '/success_page': (context) => SuccessPage(),
        '/home_page': (context) => HomePage(),
      },
    );
  }
}
