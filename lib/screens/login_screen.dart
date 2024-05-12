import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // Background color for the Scaffold
      body: Padding(
        padding: EdgeInsets.all(16), // Padding for consistent margins
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Horizontal centering
          mainAxisAlignment:
              MainAxisAlignment.start, // Align content to the top
          children: [
            Spacer(), // Creates flexible space at the top to push content down
            RichText(
              text: TextSpan(
                text: "L",
                style: TextStyle(
                  color: Color(0xFF54A2BB), // Light blue for the first letter
                  fontSize: 30,
                ),
                children: [
                  TextSpan(
                    text: "OUDICIO",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5), // Space between elements
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("assets/images/logo.png"), // App's logo
            ),
            SizedBox(height: 50), // Adds space between the logo and form fields
            SizedBox(
              width: 320,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent, // Nearly invisible border
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black, // Visible border on focus
                      width: 2.0,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white70, // Off-white background
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15), // Space between form fields
            SizedBox(
              width: 320,
              child: TextFormField(
                obscureText: true, // For passwords
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white70,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
                height:
                    60), // Adds space between the form fields and the button
            SizedBox(
              width: 270,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(0, 50),
                  foregroundColor: Colors.black,
                  backgroundColor: Color(0xFF93B4C0),
                ),
                onPressed: () {
                  // Action for the button
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 17), // Button text size
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "© 2024 Jerry O.",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ), // Ensures space at the bottom
          ],
        ),
      ),
    );
  }
}
