import 'package:cleaning_service/get_started/screen/get_started.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0XFFef6359),
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              const StadiumBorder(),
            ),
          ),
        ),
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: const GetStarted(),
    );
  }
}