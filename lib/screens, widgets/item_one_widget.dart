import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ItemOneWidget extends StatefulWidget {
  const ItemOneWidget({super.key});

  @override
  State<ItemOneWidget> createState() => _ItemOneWidgetState();
}

class _ItemOneWidgetState extends State<ItemOneWidget> {
  int _currentIndex = 0;

  List<Widget> widgets = [
    Center(
      child: Image.network(
        'https://i0.wp.com/www.galvanizeaction.org/wp-content/uploads/2022/06/Wow-gif.gif?fit=450%2C250&ssl=1',
      ),
    ),
    Center(
      child: Image.network(
        'https://ichef.bbci.co.uk/news/976/cpsprodpb/C257/production/_129115794_gettyimages-1331807831-1.jpg',
      ),
    ),
    const Center(
      child: Text(
        'The Best School',
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Icon(Icons.settings, size: 50),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: widgets[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          'Home Page',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 70,
        backgroundColor: Colors.amber,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        rightCornerRadius: 30,
        leftCornerRadius: 30,
        activeIndex: _currentIndex,
        splashColor: Colors.green,
        splashSpeedInMilliseconds: 200,
        splashRadius: 40,
        notchMargin: 10,
        activeColor: Colors.blue,
        iconSize: 30,
        icons: const [
          Icons.home,
          Icons.business,
          Icons.school,
          Icons.settings,
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
