import 'package:flutter/material.dart';
import 'end_screen.dart';

class Doctor2AppointmentConfirmationScreen extends StatelessWidget {
  final String selectedDay;
  final String selectedDate;
  final String selectedTime;

  const Doctor2AppointmentConfirmationScreen({
    super.key,
    required this.selectedDay,
    required this.selectedDate,
    required this.selectedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4CAF50),

      body: SafeArea(
        child: Stack(
          children: [
            ///================================
            /// GREEN BACKGROUND
            ///================================
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xff4CAF50),
            ),

            ///================================
            /// RIGHT POLYGON
            ///================================
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/polygon.png", fit: BoxFit.fill),
            ),

            ///================================
            /// BACK BUTTON
            ///================================
            Positioned(
              top: 18,
              left: 18,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),

            ///================================
            /// HEADER
            ///================================
            Positioned(
              top: 45,
              left: 25,
              right: 25,
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 38,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),

                  const SizedBox(width: 20),

                  const Text(
                    "Hello Romer!",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            ///================================
            /// WHITE CARD
            ///================================
            Positioned(
              top: 160,
              left: 15,
              right: 15,
              bottom: 85,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(80),
                  ),
                ),

                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 40,
                    ),

                    child: Column(
                      children: [
                        const SizedBox(height: 30),

                        const Text(
                          "Your Appointment\nhas been booked!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),

                        const SizedBox(height: 18),

                        const Text(
                          "Ref. Booking No.: 24090078",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 55),

                        Text(
                          "$selectedDay, Oct. $selectedDate, 2024",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          selectedTime,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 19,
                            color: Colors.black87,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "Dentist",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 5),

                        const Text(
                          "Dr. Louie",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 40),

                        const Text(
                          "Please come 20 minutes prior to your appointment.\nThank you.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.black54,
                            height: 1.6,
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          "For cancellation of booking kindly call :\n999-99999, Thank you.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.deepOrange,
                            height: 1.6,
                          ),
                        ),

                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 55),
                          child: SizedBox(
                            width: double.infinity,
                            height: 58,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const EndScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2F43F4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              child: const Text(
                                "LOGOUT",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 120),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            ///==========================
            /// FLOATING POWER BUTTON
            ///==========================
            Positioned(
              bottom: 90,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  // End Screen baad mein connect karenge
                },
                child: Image.asset(
                  "assets/images/power.png",
                  width: 48,
                  height: 48,
                ),
              ),
            ),
          ],
        ),
      ),

      ///==========================
      /// BOTTOM NAVIGATION BAR
      ///==========================
      bottomNavigationBar: Container(
        height: 75,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Image.asset("assets/images/home.png", width: 30),
            ),

            GestureDetector(
              onTap: () {},
              child: Image.asset("assets/images/calender.png", width: 30),
            ),

            GestureDetector(
              onTap: () {},
              child: Image.asset("assets/images/favourite.png", width: 30),
            ),

            GestureDetector(
              onTap: () {},
              child: Image.asset("assets/images/profile_icon.png", width: 30),
            ),
          ],
        ),
      ),
    );
  }
}
