import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey.withOpacity(0.1),
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello',
                                style: GoogleFonts.montserrat(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Row joy',
                                style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 32,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 270,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search album song',
                              hintStyle:
                                  GoogleFonts.montserrat(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                    BorderSide(width: 0, color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide:
                                    BorderSide(width: 0, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 0, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: PopupMenuButton(
                              icon: Icon(
                                Icons.settings,
                                color: Colors.grey,
                              ),
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  value: 1,
                                  child: Text(
                                    'Setting',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 2,
                                  child: Text(
                                    'On Album',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 3,
                                  child: Text(
                                    'Dark',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                              onSelected: (value) {
                                if (value == 1) {
                                  print('Setting');
                                } else if (value == 2) {
                                  print('on Album');
                                } else {
                                  print('Dark');
                                }
                              },
                              offset: Offset(10.0, 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Colors.amberAccent,
                          Colors.blue,
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            margin: EdgeInsets.only(top: 15, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '40%',
                                  style: GoogleFonts.roboto(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'OFF',
                                  style: GoogleFonts.roboto(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Get unlimited download',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                    elevation: 5,
                                  ),
                                  onPressed: () {},
                                  child: Text('PREMIUM NOW'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Image.asset('assets/femail.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Most Populer',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            elevation: 5,
                          ),
                          onPressed: () {},
                          child: Text('View all'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Populersonglist(
                    firstImage: AssetImage('assets/Mu1.jpg'),
                    firstsongtitle: 'Shape of you',
                    firstsongdownlod: '2.4M Download',
                    secondImage: AssetImage('assets/Mu2.jpg'),
                    secondsongtiltle: 'It,s my live',
                    secondsongdownload: '2B Download',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Populersonglist(
                    firstImage: AssetImage('assets/Mu3.jpg'),
                    firstsongtitle: 'Shape of you she with me',
                    firstsongdownlod: '2.4M Download',
                    secondImage: AssetImage('assets/Mu4.jpg'),
                    secondsongtiltle: 'wow wow my live',
                    secondsongdownload: '2B Download',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Populersonglist extends StatelessWidget {
  final firstImage;
  final firstsongtitle;
  final firstsongdownlod;
  final secondImage;
  final secondsongtiltle;
  final secondsongdownload;
  const Populersonglist(
      {Key key,
      this.firstImage,
      this.firstsongtitle,
      this.firstsongdownlod,
      this.secondImage,
      this.secondsongtiltle,
      this.secondsongdownload})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 1 / 2.3,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: firstImage,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1 / 2.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstsongtitle,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2.3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_downward_rounded,
                            size: 17,
                            color: Colors.red,
                          ),
                          Text(
                            firstsongdownlod,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 1 / 2.3,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: secondImage,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1 / 2.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      secondsongtiltle,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2.3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_downward_rounded,
                            size: 17,
                            color: Colors.red,
                          ),
                          Text(
                            secondsongdownload,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
