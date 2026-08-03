import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4CAF50),

      body: SafeArea(
        child: Stack(
          children: [
            ///========================
            /// Background
            ///========================
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xff4CAF50),
            ),

            ///========================
            /// Polygon
            ///========================
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/polygon.png", fit: BoxFit.fill),
            ),

            ///========================
            /// Back Button
            ///========================
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

            ///========================
            /// Body
            ///========================
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),

                child: Column(
                  children: [
                    const SizedBox(height: 20),

                    const Center(
                      child: Text(
                        "Favorite Doctors",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    const SizedBox(height: 45),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(25),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Center(
                        child: Text(
                          "No Favorite Doctors Yet",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 300),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      ///========================
      /// Bottom Navigation
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

            /// Calendar
            GestureDetector(
              onTap: () {},

              child: Image.asset("assets/images/calender.png", width: 30),
            ),

            /// Favourite (Blue)
            GestureDetector(
              onTap: () {},

              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Color(0xff2F43F4),
                  BlendMode.srcIn,
                ),

                child: Image.asset("assets/images/favourite.png", width: 30),
              ),
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
