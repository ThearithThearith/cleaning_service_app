// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleaning_service/home/util/banner_cart.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeBanner extends StatelessWidget {
  HomeBanner({
    Key? key,
  }) : super(key: key);

  final bannerItems = [
    // bannerImage, bannerTitle, bannerSubTitle
    ['assets/images/bucket.png', '15% Discount', 'Anniversary coupon for you!'],
    ['assets/images/house.png', '10% Discount', 'First time coupon for you!'],
    ['assets/images/car-wash.png', '12% Discount', 'Car wash promotion!'],
  ];

  final _pageController = PageController();
  late final _pages = List.generate(
    bannerItems.length,
    (index) => BannerCard(
      bannerImage: bannerItems[index][0],
      bannerTitle: bannerItems[index][1],
      bannerSubTitle: bannerItems[index][2],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.none,
          height: 150,
          child: PageView.builder(
            clipBehavior: Clip.none,
            controller: _pageController,
            itemBuilder: (_, index) {
              return _pages[index % _pages.length];
            },
          ),
        ),
        const SizedBox(height: 10),
        SmoothPageIndicator(
          controller: _pageController,
          count: _pages.length,
          effect: const ExpandingDotsEffect(
            expansionFactor: 4,
            dotHeight: 6,
            dotWidth: 6,
            offset: 0,
            spacing: 5,
            activeDotColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
