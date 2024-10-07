import 'package:flutter/material.dart';

class VerifyCodePage extends StatelessWidget {
  final String phoneNumber;
  final String verificationId;

  VerifyCodePage({required this.phoneNumber, required this.verificationId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verify Code')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Verify Code for $phoneNumber'),
            // Add your verification code input and logic here
          ],
        ),
      ),
    );
  }
}
