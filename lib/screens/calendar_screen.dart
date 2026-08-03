import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'favorite_doctors.dart';
import 'end_screen.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4CAF50),

      body: SafeArea(
        child: Stack(
          children: [
            ///========================
            /// GREEN BACKGROUND
            ///========================
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xff4CAF50),
            ),

            ///========================
            /// RIGHT POLYGON
            ///========================
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/polygon.png", fit: BoxFit.fill),
            ),

            ///========================
            /// MAIN CONTENT
            ///========================
            Column(
              children: [
                const SizedBox(height: 18),

                ///========================
                /// HEADER
                ///========================
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),

                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },

                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 22,
                        ),
                      ),

                      const SizedBox(width: 15),

                      const CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage(
                          "assets/images/profile.png",
                        ),
                      ),

                      const SizedBox(width: 18),

                      const Expanded(
                        child: Text(
                          "Hello Romer!",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  "MY APPOINTMENTS:",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                ///========================
                /// WHITE INFO CARD
                ///========================
                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 18),

                    decoration: const BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(80),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 22,
                        right: 22,
                        top: 12,
                        bottom: 18,
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///========================
                          /// TOP BLACK LINE
                          ///========================
                          const Divider(color: Colors.black, thickness: 1),

                          const SizedBox(height: 16),

                          ///========================
                          /// LATEST APPOINTMENT
                          ///========================
                          const Center(
                            child: Text(
                              "Wednesday, Oct. 30, 2024  @ 9:30 AM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          const SizedBox(height: 6),

                          const Center(
                            child: Text(
                              "Internal Medicine, Dr. Sandigan",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          const SizedBox(height: 18),

                          const Center(
                            child: Text(
                              "Please come 20 minutes prior to\nyour appointment, Thank you.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                color: Colors.black87,
                                height: 1.5,
                              ),
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Center(
                            child: Text(
                              "For cancellation of booking kindly\ncall : 999-99999, Thank you.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                color: Colors.deepOrange,
                                height: 1.5,
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),

                          const Divider(color: Colors.black, thickness: 1),

                          const SizedBox(height: 18),

                          ///========================
                          /// PAST APPOINTMENT 1
                          ///========================
                          const Text(
                            "Past appointment:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            "Tuesday, Oct. 8, 2024  @ 9:30 AM",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),

                          const SizedBox(height: 4),

                          const Text(
                            "Internal Medicine, Dr. Sandigan",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),

                          const SizedBox(height: 18),

                          const Divider(color: Colors.black, thickness: 1),

                          const SizedBox(height: 18),

                          ///========================
                          /// PAST APPOINTMENT 2
                          ///========================
                          const Text(
                            "Past appointment:",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            "Thursday, Aug. 1, 2024  @ 9:30 AM",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),

                          const SizedBox(height: 4),

                          const Text(
                            "Internal Medicine, Dr. Sandigan",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            ),
                          ),

                          const SizedBox(height: 18),

                          const Divider(color: Colors.black, thickness: 1),

                          const SizedBox(height: 25),

                          ///========================
                          /// LOG OUT BUTTON
                          ///========================
                          const SizedBox(height: 8),

                          Center(
                            child: SizedBox(
                              width: 170,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const EndScreen(),
                                    ),
                                  );
                                },

                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff2F43F4),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),

                                child: const Text(
                                  "LOG OUT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                /// Gap between white card and navbar
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),

      ///========================
      /// BOTTOM NAVIGATION
      ///========================
      bottomNavigationBar: Container(
        height: 75,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 22),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            /// Home
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/images/home.png", width: 30),
            ),

            /// Calendar Selected
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Color(0xff2F43F4),
                BlendMode.srcIn,
              ),
              child: Image.asset("assets/images/calender.png", width: 30),
            ),

            /// Favourite
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FavoriteDoctorsScreen(),
                  ),
                );
              },
              child: Image.asset("assets/images/favourite.png", width: 30),
            ),

            /// Profile
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
