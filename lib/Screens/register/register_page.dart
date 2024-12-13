import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF6A11CB),
              Color.fromARGB(255, 136, 164, 120),
              Color.fromARGB(255, 34, 152, 167),
              Color.fromARGB(255, 37, 252, 213)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Create an Account!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Register to continue",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Card for registration fields with transparent background
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40), // Radius for top-left corner
                        bottomRight: Radius.circular(20), // Radius for bottom-right corner
                      ),
                    ),
                    color: Colors.white.withOpacity(0.5), // Set the color to white with 0.5 opacity
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
                      child: Column(
                        children: [
                          Text('User Details', style: TextStyle(fontSize: 22)),
                          const SizedBox(height: 20),
                          // Email TextField
                          _buildTextField(
                            controller: emailController,
                            hintText: "Email Address",
                            icon: Icons.email,
                          ),
                          const SizedBox(height: 20),

                          // Username TextField
                          _buildTextField(
                            controller: usernameController,
                            hintText: "Username",
                            icon: Icons.person,
                          ),
                          const SizedBox(height: 20),

                          // Mobile Number TextField
                          _buildTextField(
                            controller: mobileController,
                            hintText: "Mobile Number",
                            icon: Icons.phone,
                          ),
                          const SizedBox(height: 20),

                          // Date of Birth TextField
                          _buildTextField(
                            controller: dobController,
                            hintText: "Date of Birth",
                            icon: Icons.calendar_today,
                          ),
                          const SizedBox(height: 20),

                          // Password TextField
                          _buildTextField(
                            controller: passwordController,
                            hintText: "Password",
                            icon: Icons.lock,
                            obscureText: true,
                          ),
                          const SizedBox(height: 20),

                          // Confirm Password TextField
                          _buildTextField(
                            controller: confirmPasswordController,
                            hintText: "Confirm Password",
                            icon: Icons.lock,
                            obscureText: true,
                          ),
                          const SizedBox(height: 30),

                          // Register Button
                          ElevatedButton(
                            onPressed: () {
                              // Handle registration
                              print('User Registered');
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 80,
                                vertical: 14,
                              ),
                              backgroundColor: Colors.teal,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Additional Options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white70),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to Login
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.4),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black54),
        prefixIcon: Icon(icon, color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
      ),
    );
  }
}
