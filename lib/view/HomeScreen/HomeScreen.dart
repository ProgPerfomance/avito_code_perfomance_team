// ignore_for_file: non_constant_identifier_names, file_names
import 'package:avito_code_perfomance_team/view/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../AdsScreen/AdsMainScreen.dart';
int _selectIndex = 0;
List ScreenList = [
  const AdsScreen(),
  const Text('2'),
  const Text('3'),
  const ProfileScreen(),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
      //  unselectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 10),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Объявления'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Сообщения'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart_fill), label: 'Избранное'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль',),
        ],
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

}
