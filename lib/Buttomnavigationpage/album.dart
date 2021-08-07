import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_apps/mideiaPlayer.dart';
import 'package:login_apps/pagerouteAnimation.dart';

class Albumpage extends StatefulWidget {
  const Albumpage({Key key}) : super(key: key);

  @override
  _AlbumpageState createState() => _AlbumpageState();
}

class _AlbumpageState extends State<Albumpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upcomming',
                          style: GoogleFonts.montserrat(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(pageanimation(MideiaPlayer()));
                            },
                            child: AlbumhorizScroll(
                              coverImage: 'assets/Mu1.jpg',
                              coverTitle: 'Feel free love',
                              coverName: 'Joni Dave',
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(pageanimation(MideiaPlayer()));
                            },
                            child: AlbumhorizScroll(
                              coverImage: 'assets/Mu2.jpg',
                              coverTitle: ' free love now',
                              coverName: 'Joni Dave',
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(pageanimation(MideiaPlayer()));
                            },
                            child: AlbumhorizScroll(
                              coverImage: 'assets/Mu3.jpg',
                              coverTitle: 'Mon j chay',
                              coverName: 'Dave',
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(pageanimation(MideiaPlayer()));
                            },
                            child: AlbumhorizScroll(
                              coverImage: 'assets/Mu4.jpg',
                              coverTitle: 'oooo my love',
                              coverName: 'Joni',
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recently play',
                          style: GoogleFonts.montserrat(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              RecentlyplayList(
                                profileImage: 'assets/Mu1.jpg',
                                profileTitle: 'you me We are also love',
                                profileName: 'Jone  now',
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RecentlyplayList(
                                profileImage: 'assets/Mu2.jpg',
                                profileTitle: 'We  also love him',
                                profileName: 'Jone Davit ',
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RecentlyplayList(
                                profileImage: 'assets/Mu3.jpg',
                                profileTitle: 'We love more',
                                profileName: ' Davit ',
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RecentlyplayList(
                                profileImage: 'assets/Mu4.jpg',
                                profileTitle: 'All is  also love',
                                profileName: 'rowjoy',
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RecentlyplayList(
                                profileImage: 'assets/Mu1.jpg',
                                profileTitle: 'ডিযাইন করার সময়',
                                profileName: 'jamirul islam',
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

class RecentlyplayList extends StatelessWidget {
  final profileImage;
  final profileTitle;
  final profileName;
  const RecentlyplayList({
    Key key,
    this.profileImage,
    this.profileTitle,
    this.profileName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(profileImage),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 7,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profileTitle,
                    style: GoogleFonts.montserrat(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    profileName,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Play'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Push'),
                  ),
                ],
                onSelected: (value) {
                  if (value == 1) {
                    print('Play now');
                  } else {
                    print('Push');
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlbumhorizScroll extends StatelessWidget {
  final coverImage;
  final coverTitle;
  final coverName;
  const AlbumhorizScroll({
    Key key,
    this.coverImage,
    this.coverTitle,
    this.coverName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 1 / 1.2,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(coverImage),
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coverTitle,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  coverName,
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
