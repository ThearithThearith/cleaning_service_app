import 'package:cleaning_service/home/util/home_app_bar.dart';
import 'package:cleaning_service/home/util/home_banner.dart';
import 'package:cleaning_service/home/util/home_bottom_app_bar.dart';
import 'package:cleaning_service/home/util/home_search_box.dart';
import 'package:cleaning_service/home/util/section_title.dart';
import 'package:cleaning_service/home/util/service_category.dart';
import 'package:cleaning_service/home/util/staff_box.dart';
import 'package:cleaning_service/models/staff_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final double _defaultPadding = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF223956),
      extendBody: true,
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Good morning
              const SizedBox(height: 10),
              HomeAppBar(defaultPadding: _defaultPadding),
              const SizedBox(height: 20),

              // white body
              Container(
                padding: const EdgeInsets.only(bottom: 50),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _defaultPadding,
                    vertical: 15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Search box
                      const HomeSearchBox(),
                      const SizedBox(height: 30),

                      // Banner
                      HomeBanner(),
                      const SizedBox(height: 20),

                      // Service Category
                      const SectionTitle(title: 'Service Category'),
                      const SizedBox(height: 15),
                      ServiceCategory(),
                      const SizedBox(height: 20),

                      // Recommended Staff
                      const SectionTitle(title: 'Recommended Staff'),
                      const SizedBox(height: 15),
                      Column(
                        children: List.generate(
                          recommendedStaffs.length,
                          (index) => StaffBox(staff: recommendedStaffs[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomAppBar(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: const Color(0XFFef6357),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
