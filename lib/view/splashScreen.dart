import 'package:flutter/material.dart';
import 'package:food_app/view/dashboard.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 30),
        child: Column(
          children: [
            // Image at the top
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height *
                  0.4, // 40% of screen height
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/logo.png'), // Replace with your image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Spacer to create space in between
            const Spacer(),
            // Button at the bottom
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                  // Checkout functionality
                },
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),

              //  ElevatedButton(
              //   onPressed: () {
              //     // Define button action here
              //   },

              //   style: ElevatedButton.styleFrom(

              //     backgroundColor: const Color(0xFF78a2a2), // Button color
              //     padding: const EdgeInsets.symmetric(
              //         vertical: 16.0, horizontal: 32.0),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12.0),
              //     ),
              //   ),
              //   child: const Text(
              //     'Get Started',
              //     style: TextStyle(
              //       fontSize: 18,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
