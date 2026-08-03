import 'package:flutter/material.dart';
import 'otp_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: Stack(
          children: [
            ///==========================
            /// Background
            ///==========================
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xff4CAF50),
            ),

            ///==========================
            /// Polygon
            ///==========================
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: IgnorePointer(
                child: Image.asset(
                  "assets/images/polygon.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),

            ///==========================
            /// Main Content
            ///==========================
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    children: [
                      const SizedBox(height: 60),

                      ///==========================
                      /// Logo
                      ///==========================
                      Center(
                        child: SizedBox(
                          width: 256,
                          height: 258,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(46),
                            child: Image.asset(
                              "assets/images/logo1.png",
                              width: 256,
                              height: 258,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      const Text(
                        "Create account",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 28),

                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            const SizedBox(height: 18),

                            ///=====================
                            /// Name
                            ///=====================
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Name",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            TextFormField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintText: "Enter Name",
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return "Please enter your name";
                                }
                                return null;
                              },
                            ),

                            const SizedBox(height: 18),

                            ///=====================
                            /// Password
                            ///=====================
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Password",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            TextFormField(
                              controller: passwordController,
                              obscureText: obscurePassword,
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    obscurePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      obscurePassword = !obscurePassword;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter password";
                                }

                                if (value.length < 6) {
                                  return "Minimum 6 characters";
                                }

                                return null;
                              },
                            ),
                            const SizedBox(height: 18),

                            ///=====================
                            /// Confirm Password
                            ///=====================
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Confirm Password",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),

                            TextFormField(
                              controller: confirmPasswordController,
                              obscureText: obscureConfirmPassword,
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    obscureConfirmPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      obscureConfirmPassword =
                                          !obscureConfirmPassword;
                                    });
                                  },
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please confirm password";
                                }

                                if (value != passwordController.text) {
                                  return "Passwords do not match";
                                }

                                return null;
                              },
                            ),

                            const SizedBox(height: 30),

                            ///=====================
                            /// Continue Button
                            ///=====================
                            SizedBox(
                              width: double.infinity,
                              height: 55,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff1F22E0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const OtpScreen(),
                                      ),
                                    );
                                  }
                                },
                                child: const Text(
                                  "Continue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Poppins",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            ///==========================
                            /// Divider
                            ///==========================
                            const SizedBox(height: 18),

                            Container(
                              width: 300,
                              height: 1,
                              color: Colors.black,
                            ),

                            const SizedBox(height: 18),

                            ///==========================
                            /// Social Box
                            ///==========================
                            Container(
                              width: 273,
                              height: 95,
                              decoration: BoxDecoration(
                                color: const Color(0xB2D9D9D9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 10,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    /// Sign up with + Icons
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Sign up with",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),

                                        const SizedBox(width: 12),

                                        Image.asset(
                                          "assets/images/facebook.png",
                                          width: 34,
                                          height: 34,
                                        ),

                                        const SizedBox(width: 12),

                                        Image.asset(
                                          "assets/images/google.png",
                                          width: 34,
                                          height: 34,
                                        ),
                                      ],
                                    ),

                                    /// Login
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Have an account? ",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 14,
                                          ),
                                        ),

                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            "Log in",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 25),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///==========================
            /// Back Button
            ///==========================
            Positioned(
              top: 15,
              left: 10,
              child: IconButton(
                splashRadius: 24,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
