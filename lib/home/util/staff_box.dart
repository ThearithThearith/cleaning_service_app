// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cleaning_service/models/staff_model.dart';

class StaffBox extends StatelessWidget {
  final StaffModel staff;
  final bool showAboutStaff;
  const StaffBox({
    Key? key,
    required this.staff,
    this.showAboutStaff = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.grey.shade300,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              Expanded(
                flex: 1,
                child: Container(
                  height: 70,
                  width: 70,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey.shade400),
                  ),
                  child: Image.asset(staff.imgPath),
                ),
              ),
              const SizedBox(width: 15),

              // name, title, rating
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      staff.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      staff.title,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 7),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 17,
                        ),
                        const SizedBox(width: 4),
                        Text('${staff.rating}'),
                      ],
                    ),
                  ],
                ),
              ),

              // paid/hour
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.end,
                    children: [
                      Text(
                        '\$${staff.payRate.floor()}',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 4, left: 2),
                        child: Text('/h'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // about staff
          showAboutStaff
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Divider(color: Colors.grey[300]),
                    const SizedBox(height: 5),
                    const Text(
                      'ABOUT THE STAFF',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      staff.about,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
