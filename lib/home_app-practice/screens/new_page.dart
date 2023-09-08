import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NewPageWidget extends StatefulWidget {
  const NewPageWidget({super.key});

  @override
  State<NewPageWidget> createState() => _NewPageWidgetState();
}

class _NewPageWidgetState extends State<NewPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        // leading: const SizedBox.shrink(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        backgroundColor: Colors.deepPurple,
        color: Colors.yellow,
        animationDuration: const Duration(seconds: 1),
        animationCurve: Curves.ease,
        onTap: (index) {
          print(index);
        },
        items: const [
          Icon(Icons.home),
          Icon(Icons.favorite),
          Icon(Icons.settings),
          Icon(Icons.business),
        ],
      ),
    );
  }
}
