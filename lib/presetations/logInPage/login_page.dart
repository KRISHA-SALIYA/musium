import 'package:flutter/material.dart';
import 'package:musium/appRoutes/app_routes.dart';


class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'lib/assets/images/logo.png', // Replace with your logo URL
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Login to your account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white12,
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.white54),
                  prefixIcon: const Icon(Icons.email, color: Colors.white54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white12,
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.white54),
                  prefixIcon: const Icon(Icons.lock, color: Colors.white54),
                  suffixIcon:
                      const Icon(Icons.visibility_off, color: Colors.white54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {
                      // setState(() {
                      //   _rememberMe = value!;
                      // });
                    },
                    checkColor: Colors.black,
                    activeColor: Colors.blue,
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.instance.home,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 120),
                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot the password?',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.white54),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or continue with',
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Colors.white54),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset(
                        "lib/assets/images/google (1).png"), // Replace with your Google icon URL
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: Image.asset(
                        "lib/assets/images/fb.png"), // Replace with your Facebook icon URL
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: Image.asset(
                        "lib/assets/images/apple.png"), // Replace with your Apple icon URL
                    iconSize: 40,
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
