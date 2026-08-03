import 'package:flutter/material.dart';

List<Map<String, String>> favouriteDoctors = [];

class FavoriteDoctorsScreen extends StatefulWidget {
  const FavoriteDoctorsScreen({super.key});

  @override
  State<FavoriteDoctorsScreen> createState() => _FavoriteDoctorsScreenState();
}

class _FavoriteDoctorsScreenState extends State<FavoriteDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4CAF50),

      appBar: AppBar(
        backgroundColor: const Color(0xff4CAF50),
        elevation: 0,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          "Favourite Doctors",
          style: TextStyle(color: Colors.black),
        ),
      ),

      body: favouriteDoctors.isEmpty
          ? const Center(
              child: Text(
                "No Favourite Doctors",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favouriteDoctors.length,

              itemBuilder: (context, index) {
                final doctor = favouriteDoctors[index];

                return Card(
                  margin: const EdgeInsets.all(12),

                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),

                      child: Image.asset(
                        doctor["image"]!,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),

                    title: Text(
                      doctor["name"]!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),

                    subtitle: Text(doctor["speciality"]!),

                    trailing: IconButton(
                      icon: const Icon(Icons.favorite, color: Colors.red),

                      onPressed: () {
                        setState(() {
                          favouriteDoctors.removeAt(index);
                        });
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
