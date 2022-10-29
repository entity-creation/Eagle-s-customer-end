import 'package:eagles_customer_end/application/bottomNavigationCubit.dart';
import 'package:eagles_customer_end/presentation/homeScreen.dart';
import 'package:eagles_customer_end/presentation/jobsScreen.dart';
import 'package:eagles_customer_end/presentation/messageScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  final bottomNavigationCubit = BottomNavigationCubit(0);
  int pageIndex = BottomNavigationCubit(0).state;

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // bottomNavigationCubit.changeIndex(index);
    // pageIndex = bottomNavigationCubit.state;
  }

  static List<Widget> screens = [
    HomeScreen(),
    JobScreen(),
    Container(),
    MessageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: ImageIcon(
              AssetImage("assets/homeIcon.png"),
              color: Color.fromRGBO(28, 45, 200, 1),
            ),
            icon: ImageIcon(
              AssetImage("assets/homeIcon.png"),
              color: Color.fromRGBO(120, 120, 120, 1),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/jobIcon.png"),
                color: Color.fromRGBO(120, 120, 120, 1),
              ),
              activeIcon: ImageIcon(
                AssetImage("assets/jobIcon.png"),
                color: Color.fromRGBO(28, 45, 200, 1),
              ),
              label: "Jobs"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/notificationIcon.png"),
                color: Color.fromRGBO(120, 120, 120, 1),
              ),
              activeIcon: ImageIcon(
                AssetImage("assets/notificationIcon.png"),
                color: Color.fromRGBO(28, 45, 200, 1),
              ),
              label: "Notifications"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/messageIcon.png"),
                color: Color.fromRGBO(120, 120, 120, 1),
              ),
              activeIcon: ImageIcon(
                AssetImage("assets/messageIcon.png"),
                color: Color.fromRGBO(28, 45, 200, 1),
              ),
              label: "Messages")
        ],
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
      ),
    );
  }
}
