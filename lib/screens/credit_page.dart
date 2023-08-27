import 'package:flutter/material.dart';

class CreditPage extends StatelessWidget {
  const CreditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Credit Page",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
