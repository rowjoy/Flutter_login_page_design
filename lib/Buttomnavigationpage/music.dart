import 'package:flutter/material.dart';

class Musicpage extends StatefulWidget {
  const Musicpage({Key key}) : super(key: key);

  @override
  _MusicpageState createState() => _MusicpageState();
}

class _MusicpageState extends State<Musicpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Music'),
      ),
    );
  }
}
