import 'package:flutter/material.dart';

import '../../appRoutes/app_routes.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black26, // Black background as in the image
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Back arrow and logo section
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        // Add functionality if needed
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Logo in the center (replace with actual logo asset)
                Image.asset(
                  'lib/assets/images/logo.png', // Replace with your logo asset
                  height: 150, // Adjust the height to fit your needs
                ),
                const SizedBox(height: 30),

                // Title Text
                const Text(
                  "Let’s get you in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: s.width * 0.1,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        radius: 20,
                        foregroundImage: const AssetImage(
                            "lib/assets/images/google (1).png"),
                      ),
                      SizedBox(
                        width: s.width * 0.05,
                      ),
                      const Text(
                        "Log In With Google",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: s.width * 0.1,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        radius: 25,
                        foregroundImage:
                            const AssetImage("lib/assets/images/fb.png"),
                      ),
                      SizedBox(
                        width: s.width * 0.05,
                      ),
                      const Text(
                        "Log In With Facebook",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: s.width * 0.1,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        radius: 25,
                        foregroundImage:
                            const AssetImage("lib/assets/images/apple.png"),
                      ),
                      SizedBox(
                        width: s.width * 0.05,
                      ),
                      const Text(
                        "Log In With Apple",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Divider(color: Colors.white)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "or",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 20),

                // Login with password button
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      AppRoutes.instance.logIn,
                    );
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: s.width * 0.1,
                        ),
                        SizedBox(
                          width: s.width * 0.05,
                        ),
                        const Text(
                          "     Log in with a password",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Sign-up text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.instance.logIn,
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.tealAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
