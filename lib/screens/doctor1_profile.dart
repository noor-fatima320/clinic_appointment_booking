import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'doctor1_appointment.dart';
import 'favorite_doctors.dart';

class DoctorProfile1Screen extends StatefulWidget {
  const DoctorProfile1Screen({super.key});

  @override
  State<DoctorProfile1Screen> createState() => _DoctorProfile1ScreenState();
}

class _DoctorProfile1ScreenState extends State<DoctorProfile1Screen> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4CAF50),

      body: SafeArea(
        child: Stack(
          children: [
            ///==========================
            /// GREEN BACKGROUND
            ///==========================
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xff4CAF50),
            ),

            ///==========================
            /// RIGHT POLYGON
            ///==========================
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/polygon.png", fit: BoxFit.fill),
            ),

            ///==========================
            /// TITLE
            ///==========================
            const Positioned(
              top: 18,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Doctor",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            ///==========================
            /// SCROLLABLE CONTENT
            ///==========================
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 70),

                  ///==========================
                  /// DOCTOR IMAGE
                  ///==========================
                  Center(
                    child: Container(
                      width: 245,
                      height: 245,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.asset(
                          "assets/images/doctor1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 35),

                  ///==========================
                  /// WHITE CONTAINER
                  ///==========================
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                        bottomRight: Radius.circular(81),
                      ),
                    ),

                    child: Column(
                      children: [
                        ///==========================
                        /// BLUE CARD
                        ///==========================
                        Transform.translate(
                          offset: const Offset(0, -35),

                          child: Container(
                            width: 364,
                            height: 62,
                            padding: const EdgeInsets.symmetric(horizontal: 18),

                            decoration: BoxDecoration(
                              color: const Color(0xff2F43F4),
                              borderRadius: BorderRadius.circular(17),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),

                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: const [
                                      Text(
                                        "Dr. Sandigan",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),

                                      SizedBox(height: 2),

                                      Text(
                                        "Internal Medicine",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 13,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Image.asset(
                                  "assets/images/rating.png",
                                  width: 20,
                                  height: 20,
                                ),

                                const SizedBox(width: 5),

                                const Text(
                                  "5.0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),
                                ),

                                const SizedBox(width: 12),

                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavourite = !isFavourite;

                                      if (isFavourite) {
                                        bool alreadyAdded = favouriteDoctors
                                            .any(
                                              (doctor) =>
                                                  doctor["name"] ==
                                                  "Dr. Sandigan",
                                            );

                                        if (!alreadyAdded) {
                                          favouriteDoctors.add({
                                            "name": "Dr. Sandigan",
                                            "speciality": "Internal Medicine",
                                            "image":
                                                "assets/images/doctor1.png",
                                          });
                                        }

                                        print("Added");
                                        print(favouriteDoctors);
                                      } else {
                                        favouriteDoctors.removeWhere(
                                          (doctor) =>
                                              doctor["name"] == "Dr. Sandigan",
                                        );

                                        print("Removed");
                                        print(favouriteDoctors);
                                      }
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: isFavourite
                                        ? Colors.red
                                        : Colors.white,
                                    size: 34,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        ///==========================
                        /// STATISTICS
                        ///==========================
                        Transform.translate(
                          offset: const Offset(0, -10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                _infoItem(
                                  image: "assets/images/patients.png",
                                  value: "116+",
                                  title: "Patients",
                                  subtitle: "Previous",
                                ),

                                _infoItem(
                                  image: "assets/images/experience.png",
                                  value: "5+",
                                  title: "Years",
                                  subtitle: "Experience",
                                ),

                                _infoItem(
                                  image: "assets/images/rating1.png",
                                  value: "5.0",
                                  title: "Rating",
                                  subtitle: "",
                                ),

                                _infoItem(
                                  image: "assets/images/reviews.png",
                                  value: "95+",
                                  title: "Reviews",
                                  subtitle: "",
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 5),

                        ///==========================
                        /// DOCTOR INFO
                        ///==========================
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              const Text(
                                "Doctor's Info",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),

                              const SizedBox(height: 15),

                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    color: Colors.grey,
                                    height: 1.6,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "Dr. Sandigan is the top Internal Medicine. He achieved awards from AHA ",
                                    ),

                                    TextSpan(
                                      text: "Read More...",
                                      style: TextStyle(
                                        color: Color(0xff2F43F4),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 40),

                              SizedBox(
                                width: double.infinity,
                                height: 58,

                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const Doctor1AppointmentScreen(),
                                      ),
                                    );
                                  },

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff2F43F4),

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                  ),

                                  child: const Text(
                                    "BOOK AN APPOINTMENT",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 35),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),
                  const SizedBox(height: 120),
                ],
              ),
            ),

            ///==========================
            /// BACK BUTTON
            ///==========================
            Positioned(
              top: 18,
              left: 18,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 24,
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
                  // Logout ya jo action chahiye
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const HomeScreen()),
                );
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

  ///==================================
  /// Info Item Widget
  ///==================================
  Widget _infoItem({
    required String image,
    required String value,
    required String title,
    required String subtitle,
  }) {
    return SizedBox(
      width: 75,
      child: Column(
        children: [
          Image.asset(image, width: 45, height: 45, fit: BoxFit.contain),

          const SizedBox(height: 8),

          Text(
            value,
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),

          if (subtitle.isNotEmpty)
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
