import 'package:cleaning_service/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 120),
          const Text(
            'We\'re here for your\ncleaing time!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text('Feel the fresh air and spotless area'),
          const SizedBox(height: 30),

          // Get started button
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/getstarted/sparkling1.png',
                      color: Colors.white, width: 20),
                  const Text(
                    ' Get Started',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),

          const Expanded(child: SizedBox(height: 100)),

          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/getstarted/lady.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
