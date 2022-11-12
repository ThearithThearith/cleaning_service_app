import 'package:cleaning_service/home/util/category_box.dart';
import 'package:flutter/material.dart';

class ServiceCategory extends StatelessWidget {
  ServiceCategory({
    Key? key,
  }) : super(key: key);

  final categories = [
    // title, imagePath
    ['Basic Cleaning', 'assets/images/mop.png'],
    ['Wash Dishes', 'assets/images/clean-dishes.png'],
    ['Home Laundry', 'assets/images/maid.png'],
    ['Car Cleaning', 'assets/images/car-service.png'],
    ['Kitchen Cleaning', 'assets/images/kitchen.png'],
    ['Window Cleaning', 'assets/images/window-cleaning.png'],
    ['House Cleaning', 'assets/images/clean-house.png'],
    ['Workplace Cleaning', 'assets/images/clean-city.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              debugPrint('tabbb');
            },
            child: CategoryBox(
              title: categories[index][0],
              imagePath: categories[index][1],
            ),
          );
        },
      ),
    );
  }
}
