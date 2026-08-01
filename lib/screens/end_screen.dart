import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4CAF50),

      body: SafeArea(
        child: Stack(
          children: [
            // Right Background Shape
            Align(
              alignment: Alignment.centerRight,
              child: ClipPath(
                clipper: RightShapeClipper(),
                child: Container(
                  width: 120,
                  color: Colors.white.withOpacity(0.35),
                ),
              ),
            ),

            Column(
              children: [
                const SizedBox(height: 60),

                const Center(
                  child: Text(
                    "CLINIC APPOINTMENT\nBOOKING",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                SizedBox(
                  height: 500,
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 35,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(90),
                      ),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),

                        const Text(
                          "Successfully Logged Out!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF26273A),
                          ),
                        ),

                        const SizedBox(height: 18),

                        const Text(
                          "Thank you for using\nCLINIC APPOINTMENT\nBOOKING APP!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF26273A),
                          ),
                        ),

                        const SizedBox(height: 30),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Submitted by:  Romer Gungon",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                "BSCS-ETEEAP",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),

                              SizedBox(height: 28),

                              Text(
                                "Submitted to: Prof. Dan Michael Francisco",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                "AU-Arellano University",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RightShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width * 0.45, 0);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height);

    path.lineTo(size.width * 0.82, size.height);

    path.lineTo(size.width * 0.42, size.height * 0.60);

    path.lineTo(size.width * 0.42, size.height * 0.32);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
