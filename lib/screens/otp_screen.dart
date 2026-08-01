import 'package:flutter/material.dart';
import 'home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otp1Controller = TextEditingController();
  final TextEditingController otp2Controller = TextEditingController();
  final TextEditingController otp3Controller = TextEditingController();
  final TextEditingController otp4Controller = TextEditingController();

  @override
  void dispose() {
    otp1Controller.dispose();
    otp2Controller.dispose();
    otp3Controller.dispose();
    otp4Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: Stack(
          children: [
            ///=========================
            /// Background
            ///=========================
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xff4CAF50),
            ),

            ///=========================
            /// Polygon
            ///=========================
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Image.asset("assets/images/polygon.png", fit: BoxFit.fill),
            ),

            ///=========================
            /// Back Button
            ///=========================
            Positioned(
              top: 15,
              left: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
              ),
            ),

            ///=========================
            /// Page
            ///=========================
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),

                  child: Column(
                    children: [
                      const SizedBox(height: 60),

                      ///=========================
                      /// Logo
                      ///=========================
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(46),
                          child: Image.asset(
                            "assets/images/logo2.png",
                            width: 256,
                            height: 258,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      const Text(
                        "OTP",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 18),

                      const Text(
                        "Enter the 4-digit code\nsent to\n999****43 or\nyourname@myemail.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: Colors.black,
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 35),

                      ///=========================
                      /// OTP Boxes
                      ///=========================
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _otpBox(controller: otp1Controller, autoFocus: true),

                          _otpBox(controller: otp2Controller),

                          _otpBox(controller: otp3Controller),

                          _otpBox(controller: otp4Controller),
                        ],
                      ),

                      const SizedBox(height: 35),

                      ///=========================
                      /// Confirm Button
                      ///=========================
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
                            if (otp1Controller.text.isEmpty ||
                                otp2Controller.text.isEmpty ||
                                otp3Controller.text.isEmpty ||
                                otp4Controller.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Please enter OTP"),
                                ),
                              );
                            } else {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            }
                          },

                          child: const Text(
                            "Confirm",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 25),

                      ///=========================
                      /// Resend Code
                      ///=========================
                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("OTP resent successfully"),
                            ),
                          );
                        },

                        child: const Text(
                          "RESEND CODE",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                            letterSpacing: 1,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///=========================
  /// OTP Box Widget
  ///=========================

  Widget _otpBox({
    required TextEditingController controller,
    bool autoFocus = false,
  }) {
    return SizedBox(
      width: 60,
      height: 60,
      child: TextField(
        controller: controller,
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,

        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: Colors.white,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
        ),

        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
