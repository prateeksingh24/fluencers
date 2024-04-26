
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:fluencers/AppColor.dart';
import 'package:fluencers/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bottomNavIndex = 0; // Assuming you have initialized _bottomNavIndex

  List<IconData> iconList = [
    Icons.home,
    Icons.search,
    // Icons.add,
    Icons.notifications,
    Icons.settings,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: _getBody(_bottomNavIndex),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => SosPage()),
          // );
        },
        shape: CircleBorder(),
        child: Icon(Icons.add,color: AppColor.kMain,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(

        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          return IconButton(
            color: isActive ? Colors.blue : Colors.grey,
            onPressed: () {
              setState(() {
                _bottomNavIndex = index;
              });
            },
            icon: Icon(iconList[index], size: 24),
          );
        },
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        // leftCornerRadius: 32,
        // rightCornerRadius: 32,

        onTap: (int) {},
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return HomeScreen();
      case 2:
        return NotificationScreen();
      case 3:
        return SettingScreen();
      default:
        return Container();
    }
  }
}



class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Notification Screen"),
    );
  }
}

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Setting Screen"),
    );
  }
}
