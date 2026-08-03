import 'package:flutter/material.dart';
import 'doctor1_profile.dart';
import 'doctor2_profile.dart';
import 'doctor3_profile.dart';
import 'favorite_doctors.dart';
import 'calendar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            /// Right Polygon
            ///========================
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/polygon.png", fit: BoxFit.fill),
            ),

            ///========================
            /// Main Content
            ///========================
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),

                child: Column(
                  children: [
                    const SizedBox(height: 18),

                    ///========================
                    /// Header
                    ///========================
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 34,
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
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        IconButton(
                          onPressed: () {},

                          icon: const Icon(
                            Icons.notifications_none,
                            color: Colors.black,
                            size: 34,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    ///========================
                    /// Search Row
                    ///========================
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 52,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),

                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  searchText = value.toLowerCase();
                                });
                              },

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontStyle: FontStyle.italic,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                    "assets/images/search.png",
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        GestureDetector(
                          onTap: () {},

                          child: Image.asset(
                            "assets/images/filter.png",
                            width: 32,
                            height: 32,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    ///========================
                    /// SERVICES
                    ///========================
                    const Center(
                      child: Text(
                        "SERVICES",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff243763),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    ///========================
                    /// Services Cards
                    ///========================
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: _serviceCard(
                              image: "assets/images/dental.png",
                              title: "",
                            ),
                          ),
                        ),

                        Expanded(
                          child: Center(
                            child: _serviceCard(
                              image: "assets/images/obgyne.png",
                              title: "",
                            ),
                          ),
                        ),

                        Expanded(
                          child: Center(
                            child: _serviceCard(
                              image: "assets/images/medicine.png",
                              title: "",
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 28),

                    ///========================
                    /// Doctors Heading
                    ///========================
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 78,
                        height: 24,
                        decoration: BoxDecoration(
                          color: const Color(0xff2F43F4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "See all",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(width: 3),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    const Center(
                      child: Text(
                        "DOCTORS",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff243763),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    const SizedBox(height: 15),

                    if (searchText.isEmpty ||
                        "dr. sandigan".toLowerCase().contains(searchText))
                      _doctorCard(
                        image: "assets/images/doctor1.png",
                        name: "Dr. Sandigan",
                        speciality: "Internal Medicine",
                        timing: "Timings: 9:00 AM - 3:30 PM",
                        days: "M, W, F",
                        rating: "5.0",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const DoctorProfile1Screen(),
                            ),
                          );
                        },
                      ),

                    if (searchText.isEmpty ||
                        "dr. louie".toLowerCase().contains(searchText))
                      _doctorCard(
                        image: "assets/images/doctor2.png",
                        name: "Dr. Louie",
                        speciality: "Dentist",
                        timing: "Timings: 9:00 AM - 4:00 PM",
                        days: "M, T, W, F",
                        rating: "5.0",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const DoctorProfile2Screen(),
                            ),
                          );
                        },
                      ),

                    if (searchText.isEmpty ||
                        "dr. dela cruz".toLowerCase().contains(searchText))
                      _doctorCard(
                        image: "assets/images/doctor3.png",
                        name: "Dr. Dela Cruz",
                        speciality: "Dermatologist",
                        timing: "Timings: 9:00 AM - 4:00 PM",
                        days: "M, T, W, F",
                        rating: "4.5",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const DoctorProfile3Screen(),
                            ),
                          );
                        },
                      ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        "assets/images/power.png",
                        width: 45,
                        height: 45,
                      ),
                    ),

                    const SizedBox(height: 25),
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
            GestureDetector(
              onTap: () {},
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Color(0xff2F43F4),
                  BlendMode.srcIn,
                ),
                child: Image.asset("assets/images/home.png", width: 30),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CalendarScreen()),
                );
              },
              child: Image.asset("assets/images/calender.png", width: 30),
            ),
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

            GestureDetector(
              onTap: () {},
              child: Image.asset("assets/images/profile_icon.png", width: 30),
            ),
          ],
        ),
      ),
    );
  }

  ///========================
  /// Service Card
  ///========================

  Widget _serviceCard({required String image, required String title}) {
    return Image.asset(image, width: 95, height: 95, fit: BoxFit.contain);
  }

  ///========================
  /// Doctor Card
  ///========================

  Widget _doctorCard({
    required String image,
    required String name,
    required String speciality,
    required String timing,
    required String days,
    required String rating,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),

      child: SizedBox(
        width: 385, // pehle 340 tha, ab arrow ke liye extra space
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 340,
              padding: const EdgeInsets.all(12),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),

                    child: Image.asset(
                      image,
                      width: 82,
                      height: 82,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),

                              const SizedBox(height: 2),

                              Text(
                                speciality,
                                style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),

                              const SizedBox(height: 2),

                              Text(
                                timing,
                                style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                ),
                              ),

                              const SizedBox(height: 1),

                              Text(
                                days,
                                style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Positioned(
                          top: 0,
                          right: 0,

                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/rating.png",
                                width: 23,
                                height: 23,
                              ),

                              const SizedBox(width: 3),

                              Text(
                                rating,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Arrow Outside
            Positioned(
              right: -1,
              top: 32,

              child: GestureDetector(
                onTap: onTap,

                child: Container(
                  width: 37,
                  height: 34,

                  decoration: BoxDecoration(
                    color: const Color(0xff2F43F4),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Center(
                    child: Image.asset("assets/images/arrow.png", width: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
