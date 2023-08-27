import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Booking Page",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
