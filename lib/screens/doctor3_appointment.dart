import 'package:flutter/material.dart';
import 'doctor3_appointment_confirmation.dart';

class Doctor3AppointmentScreen extends StatefulWidget {
  const Doctor3AppointmentScreen({super.key});

  @override
  State<Doctor3AppointmentScreen> createState() =>
      _Doctor1AppointmentScreenState();
}

class _Doctor1AppointmentScreenState extends State<Doctor3AppointmentScreen> {
  int selectedDate = 2;
  int selectedTime = 3;

  final List<Map<String, String>> dates = [
    {"day": "MON", "date": "12"},
    {"day": "TUE", "date": "13"},
    {"day": "WED", "date": "14"},
    {"day": "THU", "date": "15"},
    {"day": "FRI", "date": "16"},
    {"day": "SAT", "date": "17"},
  ];

  final List<String> times = [
    "08:00 AM",
    "09:00 AM",
    "10:00 AM",
    "11:00 AM",
    "01:00 PM",
    "02:00 PM",
    "03:00 PM",
    "04:00 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4CAF50),

      body: SafeArea(
        child: Stack(
          children: [
            ///=========================
            /// GREEN BACKGROUND
            ///=========================
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color(0xff4CAF50),
            ),

            ///=========================
            /// POLYGON
            ///=========================
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset("assets/images/polygon.png", fit: BoxFit.fill),
            ),

            ///=========================
            /// TITLE
            ///=========================
            const Positioned(
              top: 18,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "Doctor",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            ///=========================
            /// MAIN CONTENT
            ///=========================
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 70),

                  /// Doctor Image
                  Center(
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: const [
                          BoxShadow(color: Colors.black26, blurRadius: 8),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Image.asset(
                          "assets/images/doctor3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 14),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                        bottomRight: Radius.circular(80),
                      ),
                    ),

                    child: Column(
                      children: [
                        Transform.translate(
                          offset: const Offset(0, -28),

                          child: Container(
                            width: 340,
                            height: 65,
                            padding: const EdgeInsets.symmetric(horizontal: 18),

                            decoration: BoxDecoration(
                              color: const Color(0xff2F43F4),
                              borderRadius: BorderRadius.circular(18),
                            ),

                            child: Row(
                              children: [
                                const Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "Dr. Dela Cruz",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      SizedBox(height: 3),

                                      Text(
                                        "Dermatologist",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Image.asset(
                                  "assets/images/rating.png",
                                  width: 20,
                                ),

                                const SizedBox(width: 5),

                                const Text(
                                  "4.5",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const Center(
                          child: Text(
                            "Appointment",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        SizedBox(
                          height: 95,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: dates.length,
                            itemBuilder: (context, index) {
                              bool isSelected = selectedDate == index;

                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedDate = index;
                                  });
                                },
                                child: Container(
                                  width: 72,
                                  margin: const EdgeInsets.only(
                                    left: 12,
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? const Color(0xff4CAF50)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                      color: const Color(0xff2F43F4),
                                      width: 1.5,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        dates[index]["day"]!,
                                        style: TextStyle(
                                          color: isSelected
                                              ? Colors.white
                                              : Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        dates[index]["date"]!,
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: isSelected
                                              ? Colors.white
                                              : const Color(0xff4CAF50),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        const SizedBox(height: 25),

                        const Center(
                          child: Text(
                            "Select Time",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Wrap(
                            spacing: 12,
                            runSpacing: 14,
                            children: List.generate(times.length, (index) {
                              bool isSelected = selectedTime == index;

                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedTime = index;
                                  });
                                },
                                child: Container(
                                  width: 100,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? const Color(0xff4CAF50)
                                        : (index == 0 ||
                                              index == times.length - 1)
                                        ? const Color(0xffffe0b2)
                                        : const Color(0xffC8E6C9),
                                    borderRadius: BorderRadius.circular(22),
                                    border: Border.all(
                                      color: const Color(0xff2F43F4),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    times[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),

                        const SizedBox(height: 35),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            width: double.infinity,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        Doctor3AppointmentConfirmationScreen(
                                          selectedDay:
                                              dates[selectedDate]["day"]!,
                                          selectedDate:
                                              dates[selectedDate]["date"]!,
                                          selectedTime: times[selectedTime],
                                        ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff2F43F4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: const Text(
                                "CONFIRM",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 130),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),

            ///=========================
            /// BACK BUTTON
            ///=========================
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

            /// Floating Power Button
            Positioned(
              bottom: 115,
              right: 20,
              child: Image.asset(
                "assets/images/power.png",
                width: 48,
                height: 48,
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 75,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/home.png", width: 30),
            Image.asset("assets/images/calender.png", width: 30),
            Image.asset("assets/images/favourite.png", width: 30),
            Image.asset("assets/images/profile_icon.png", width: 30),
          ],
        ),
      ),
    );
  }
}
