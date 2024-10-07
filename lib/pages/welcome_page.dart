import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Applying a gradient background with vibrant colors
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF00C9FF), // Light Blue
              Color(0xFF92FE9D), // Light Green
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  height: 80), // Space at the top for better visual alignment

              // Fancy welcome text
              Text(
                'Welcome to FinTrack',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  letterSpacing: 1.5, // Adds some spacing between the letters
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 50), // Space between title and button

              // Fancier button with rounded corners and shadow
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor:
                      Colors.purpleAccent, // Button background color
                  foregroundColor: Colors.white, // Text color
                  elevation: 10, // Add shadow to the button
                  shadowColor: Colors.black.withOpacity(0.4),
                ),
              ),

              SizedBox(height: 20), // Space between button and footer

              // Add a nice footer or a tagline
              Text(
                'Track your expenses with ease',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                  fontStyle: FontStyle.italic,
                ),
              ),

              SizedBox(height: 80), // Space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
