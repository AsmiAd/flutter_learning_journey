import 'package:figma_task_one/screens/university_listing_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 350,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //logo and title
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.school, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'StudyHub Nepal',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                //welcome text
                const Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Please enter your academic credentials',
                  style: TextStyle(color: Colors.grey),
                ),

                const SizedBox(height: 20),

                //email field
                const Text("Academic Email"),

                const SizedBox(height: 8),

                TextField(
                  decoration: InputDecoration(
                    hintText: 'name@college.edu.np',
                    prefix: const Icon(Icons.email_outlined),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                //password field
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Password"),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                //password text field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefix: const Icon(Icons.lock_outline),
                    suffix: const Icon(Icons.visibility_outlined),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                //check box
                Row(
                  children: const [
                    Checkbox(value: false, onChanged: null),
                    Text("Keep me signed in for 30 days"),
                  ],
                ),

                const SizedBox(height: 20),

                //login button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      HomeScreen();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Login to Workspace"),
                  ),
                ),

                const SizedBox(height: 20),

                //divider
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR CONTINUE WITH"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 20),

                //google and apple sign in buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text("Google"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text("Apple"),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                //sign up
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: "New to the platform ? ",
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: "Create an account",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
