import 'package:cleaning_service/appointment/screen/appointment_screen.dart';
import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  final String bannerImage;
  final String bannerTitle;
  final String bannerSubTitle;

  const BannerCard({
    Key? key,
    required this.bannerImage,
    required this.bannerTitle,
    required this.bannerSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: const Color(0XFF1460bf),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -20,
            child: Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: -20,
            child: Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -10,
            left: 20,
            child: Image.asset(
              bannerImage,
              width: 150,
            ),
          ),
          Positioned(
            left: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bannerTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  bannerSubTitle,
                  style: TextStyle(color: Colors.grey[200]),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AppointmentScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('Book Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
