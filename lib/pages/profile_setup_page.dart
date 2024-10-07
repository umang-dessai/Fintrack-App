import 'dart:io'; // For using File class
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Import image_picker package

class ProfileSetupPage extends StatefulWidget {
  @override
  _ProfileSetupPageState createState() => _ProfileSetupPageState();
}

class _ProfileSetupPageState extends State<ProfileSetupPage> {
  File? _profileImage;

  // Method to pick image from gallery
  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path); // Assign picked file to _profileImage
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Setup'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the profile image or a default icon
            GestureDetector(
              onTap: _pickImage, // Trigger image picker on tap
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _profileImage != null
                    ? FileImage(_profileImage!)
                    : AssetImage('assets/default_profile.png') as ImageProvider, // Default icon
                child: _profileImage == null
                    ? Icon(Icons.camera_alt, size: 50, color: Colors.white)
                    : null, // Show camera icon if no image is picked
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tap to upload a profile picture',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Add other fields like username, email, etc.
            ElevatedButton(
              onPressed: () {
                // Proceed with profile setup logic
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
