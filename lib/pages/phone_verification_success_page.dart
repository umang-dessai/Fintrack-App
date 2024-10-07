import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VerificationSuccessScreen(),
    );
  }
}

class VerificationSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circle with Checkmark Icon
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFE0F7FA), // Light blue background
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            
            // "Congrats!" Text
            Text(
              'Congrats!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5D6BFC), // Custom color
              ),
            ),
            
            // Subtext
            Text(
              'Verification has been done Successfully',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 50),

            // Button
            ElevatedButton(
              onPressed: () {
                // Button press action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5D6BFC), // Button color
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Great!',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}