import 'package:flutter/material.dart';

class PhoneVerificationCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Verify your Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(
              'Enter Verification Code (5-digit)',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            // Verification Code Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Code',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40),
            // Verify Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile-setup');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              ),
              child: Text(
                'Verify',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
