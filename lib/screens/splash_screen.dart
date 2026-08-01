import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          /// Right Polygon
          ///==========================
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,

            child: Image.asset("assets/images/polygon.png", fit: BoxFit.fill),
          ),

          ///==========================
          /// Heading
          ///==========================
          Positioned(
            top: 81,
            left: 33,

            child: SizedBox(
              width: 372,

              child: Text(
                "Human Computer\nInteraction Assessment",

                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontFamily: "Asul",
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          ///==========================
          /// University
          ///==========================
          Positioned(
            top: 155,
            left: 33,

            child: SizedBox(
              width: 372,

              child: Text(
                "Arellano University – ETEEAP",

                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontFamily: "Asul",
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          ///==========================
          /// App Name
          ///==========================
          Positioned(
            top: 229,
            left: 79,

            child: SizedBox(
              width: 272,

              child: const Text(
                "CLINIC APPOINTMENT\nBOOKING APP",

                textAlign: TextAlign.center,

                style: TextStyle(
                  fontFamily: "Asul",
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          ///==========================
          /// Logo + Stars
          ///==========================
          Positioned(
            top: 324,
            left: 88,
            child: SizedBox(
              width: 256,
              height: 258,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  /// Logo
                  ClipRRect(
                    borderRadius: BorderRadius.circular(46),
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 256,
                      height: 258,
                      fit: BoxFit.cover,
                    ),
                  ),

                  /// Star 1
                  Positioned(
                    left: 158,
                    top: 181,
                    child: Image.asset(
                      "assets/images/star1.png",
                      width: 115,
                      height: 103,
                    ),
                  ),

                  /// Star 2
                  Positioned(
                    left: 240,
                    top: 128,
                    child: Image.asset(
                      "assets/images/star2.png",
                      width: 57,
                      height: 58,
                    ),
                  ),

                  /// Star 3
                  Positioned(
                    left: 261,
                    top: 53,
                    child: Image.asset(
                      "assets/images/star3.png",
                      width: 38,
                      height: 38,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///==========================
          /// Submitted By / Submitted To
          ///==========================
          Positioned(
            top: 630,
            left: 61,

            child: SizedBox(
              width: 369,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Submitted by: ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),

                        TextSpan(
                          text: "Romer Gungon",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 3),

                  const Text(
                    "BSCS-ETEEAP",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 18),

                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Submitted to: ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),

                        TextSpan(
                          text: "Prof. Dan Michael Francisco",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 3),

                  const Text(
                    "AU–Arellano University",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///==========================
          /// Bottom White Rectangle
          ///==========================
          Positioned(
            left: 0,
            right: 0,
            bottom: 32,

            child: Container(
              width: double.infinity,
              height: 101,
              color: Colors.white,

              child: Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),

                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    ); // Login Screen baad me add karenge
                  },

                  child: Container(
                    width: 181,
                    height: 60,

                    decoration: BoxDecoration(
                      color: const Color(0xff4CAF50),

                      borderRadius: BorderRadius.circular(40),

                      border: Border.all(color: Colors.grey.shade400, width: 6),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),

                    child: const Center(
                      child: Text(
                        "START",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          ///==========================
          /// Bottom Green Bar
          ///==========================
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,

            child: Container(height: 32, color: const Color(0xff4CAF50)),
          ),
        ],
      ),
    );
  }
}
