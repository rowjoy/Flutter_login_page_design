import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_apps/Buttomnavigationpage/Profile.dart';
import 'package:login_apps/Buttomnavigationpage/album.dart';
import 'package:login_apps/Buttomnavigationpage/home.dart';
import 'package:login_apps/Buttomnavigationpage/music.dart';
import 'package:login_apps/pagerouteAnimation.dart';

class Homescreen extends StatefulWidget {
  static const String path = "Homescreen";
  const Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int indexNumber = 0;
  List tabedpage = [
    // pageanimation(Homepage()),
    // pageanimation(Albumpage()),
    // pageanimation(Musicpage()),
    // pageanimation(Profilepage()),
    Homepage(),
    Albumpage(),
    Musicpage(),
    Profilepage(),
  ];

  void _pagetabing(int index) {
    setState(() {
      indexNumber = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        selectedLabelStyle: GoogleFonts.montserrat(),
        unselectedLabelStyle: GoogleFonts.montserrat(),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            label: 'Album',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_video),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: indexNumber,
        onTap: _pagetabing,
      ),
      body: (tabedpage[indexNumber]),
    );
  }
}
