import 'dart:async';

import 'package:expense_tracker_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Text("data"))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.primaryBackgroundColor,
      body: Center(
        child: Text(
          AppConstant.appName,
          style: GoogleFonts.lato(
              fontSize: 56, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
