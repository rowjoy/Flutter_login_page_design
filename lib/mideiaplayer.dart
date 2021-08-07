import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MideiaPlayer extends StatefulWidget {
  static const String path = "MideiaPlayer";
  const MideiaPlayer({Key key}) : super(key: key);

  @override
  _MideiaPlayerState createState() => _MideiaPlayerState();
}

class _MideiaPlayerState extends State<MideiaPlayer> {
  double slidervalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.download_outlined),
            label: 'download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volume_down),
            label: 'download',
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.withOpacity(0.1),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Text(
                      'Now Playing',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width * 1 / 1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.red,
                      Colors.yellow,
                    ],
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('assets/player.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Let me Love you',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Joni Diwel',
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 310,
                      child: Slider(
                        activeColor: Colors.red,
                        value: slidervalue ?? 0,
                        min: 0,
                        max: 200,
                        onChanged: (value) {
                          setState(() {
                            slidervalue = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text(
                        '5.34',
                        style: GoogleFonts.montserrat(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.fast_rewind,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.red,
                            Colors.yellow,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.pause,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.fast_forward,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
