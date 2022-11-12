import 'package:cleaning_service/appointment/util/appointment_app_bar.dart';
import 'package:cleaning_service/appointment/util/appointment_date.dart';
import 'package:cleaning_service/appointment/util/appointment_section_title.dart';
import 'package:cleaning_service/appointment/util/cleaning_chip.dart';
import 'package:cleaning_service/home/util/staff_box.dart';
import 'package:cleaning_service/models/staff_model.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF223956),
      extendBody: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // App bar
              const SizedBox(height: 10),
              const AppointmentAppBar(),
              const SizedBox(height: 20),

              // White body
              Container(
                // padding: const EdgeInsets.only(bottom: 50),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 15,
                  ),
                  child: Column(
                    children: [
                      // Service Category
                      const AppointmentSectionTitle(title: 'Service Category'),
                      const SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Category image
                          Container(
                            width: 90,
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1, color: Colors.grey.shade200),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0XFFf0f6fb),
                                  Colors.white,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            child: Image.asset(
                                'assets/images/window-cleaning.png',
                                width: 50),
                          ),

                          // title, subtitle, options
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Title
                              const Text(
                                'Basic Cleaning',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              // what you get
                              const Text(
                                'With this service category, you will get:',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),

                              // options
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  CleaningChip(title: 'Dust Cleaning'),
                                  SizedBox(width: 10),
                                  CleaningChip(title: 'Bathroom Cleaning'),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: const [
                                  CleaningChip(title: 'Floor Cleaning'),
                                  SizedBox(width: 9),
                                  CleaningChip(title: 'Glass Cleaning'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),

                      // Staff Worker
                      const AppointmentSectionTitle(title: 'Staff Worker'),
                      const SizedBox(height: 15),
                      StaffBox(staff: cleaningStaffs[4], showAboutStaff: true),
                      const SizedBox(height: 20),

                      // Select Date
                      const AppointmentSectionTitle(title: 'Select Date'),
                      const SizedBox(height: 15),
                      const AppointmentDate(),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(width: 1, color: Colors.grey.shade200),
          ),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(Icons.shield_moon_rounded),
          onPressed: () {},
          label: const Text(
            'Book Appointment',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(minimumSize: const Size(350, 50)),
        ),
      ),
    );
  }
}
