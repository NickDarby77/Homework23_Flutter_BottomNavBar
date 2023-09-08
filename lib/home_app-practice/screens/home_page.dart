import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lesson28_bottom_navigationbar/home_app-practice/screens/new_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewPageWidget(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_forward,
            size: 50,
            color: Colors.purple,
          ),
        ),
      ),
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: GNav(
            onTabChange: (index) {
              print(index);
            },
            gap: 10,
            backgroundColor: Colors.black,
            rippleColor: Colors.blue,
            color: Colors.white,
            activeColor: Colors.white,
            hoverColor: Colors.red,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.favorite_border_outlined, text: 'Likes'),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
