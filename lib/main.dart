import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const ClinicAppointmentApp());
}

class ClinicAppointmentApp extends StatelessWidget {
  const ClinicAppointmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Clinic Appointment Booking",
      home: const SplashScreen(),
    );
  }
}
