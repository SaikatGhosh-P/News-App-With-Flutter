import 'package:flutter/material.dart';

import '../widget/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(index: 2),
      body: Container(
        child: Text("No Screen till Yet"),
      ),
    );
  }
}
