import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:instagram_ui/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int counter = 0;
  List<Widget> screens = [
    HomeScreen(),
    Text("Search"),
    Text("add"),
    Text("Likes"),
    ProfileScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[counter],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        currentIndex: counter,
        onTap: (Index) {
          setState(() {
            counter = Index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined , size: 32,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 32), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined, size: 32), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border, size: 32), label: ""),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: counter == 4 ? Colors.black : Colors.transparent,
                  width: 2,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/white-cat.jpg',
                  width: 32,
                  height: 32,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            label: "",
          )
        ],
      ),
    );
  }
}
