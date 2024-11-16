import 'package:flutter/material.dart';
import 'package:musium/appRoutes/app_routes.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  void navigateToLogIn({required BuildContext context}) {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.instance.welcome,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToLogIn(context: context);
    return Scaffold(
      backgroundColor: Colors.black, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Icon
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                  'lib/assets/images/logo.png'), // Replace with your logo image path
            ),
            const SizedBox(height: 5),
            // Text below the logo
            const Text(
              'musium',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.cyanAccent, // Font color similar to the logo
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
