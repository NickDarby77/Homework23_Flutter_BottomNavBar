import 'package:flutter/material.dart';
import 'item_one_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> widgets = [
    Center(
      child: Builder(builder: (context) {
        return ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ItemOneWidget(),
              ),
            );
          },
          child: const Text('Another Page'),
        );
      }),
    ),
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bottom Navigation Bar'),
      ),
      body: widgets[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.green,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          elevation: 20,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_1),
              label: 'Доктора',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_sharp),
              label: 'Статьи',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.beenhere),
              label: 'Мои доктора',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Профиль',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(79, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ItemOneWidget(),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.medical_services_outlined),
            SizedBox(height: 4),
            Text('Вызов'),
          ],
        ),
      ),
    );
  }
}
