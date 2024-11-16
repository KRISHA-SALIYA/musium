import 'package:flutter/material.dart';
import 'package:musium/appRoutes/app_routes.dart';


class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.black, // Matches the background color in the image
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Time and signal section
            const Padding(
              padding: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            ),
            const SizedBox(height: 40),

            // Girl image (you will need to add your image asset here)
            Center(
              child: Image.asset(
                'lib/assets/images/girl.png', // Replace with the path to your image
                height: 300, // Adjust height as needed
              ),
            ),
            const SizedBox(height: 40),

            // Text section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      children: [
                        TextSpan(text: 'From the '),
                        TextSpan(
                          text: 'latest ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: 'to the '),
                        TextSpan(
                          text: 'greatest hits',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ', play your favorite tracks on '),
                        TextSpan(
                          text: 'musium',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.tealAccent,
                          ),
                        ),
                        TextSpan(text: ' now!'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Loading bar (just a placeholder here)
                  const LinearProgressIndicator(
                    value: 0.5, // Set it as needed
                    backgroundColor: Colors.white54,
                    color: Colors.tealAccent,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            const Spacer(),

            // Get Started button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.tealAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.instance.signUp,
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
