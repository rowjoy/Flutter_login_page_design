import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration extends StatefulWidget {
  const Registration({Key key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey.withOpacity(0.1),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 280, top: 7),
                  child: IconButton(
                      icon: Icon(Icons.arrow_back_rounded),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Let\'s Get Started",
                        style: GoogleFonts.roboto(
                            fontSize: 23,
                            color: Colors.black,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Create an account to Q Allure to get all Features',
                        style: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RGTextFrield(
                  hintText: 'Your name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blueGrey,
                  ),
                  obscureText: false,
                ),
                SizedBox(
                  height: 20,
                ),
                RGTextFrield(
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blueGrey,
                  ),
                  obscureText: false,
                ),
                SizedBox(
                  height: 20,
                ),
                RGTextFrield(
                  hintText: 'Phone',
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.blueGrey,
                  ),
                  obscureText: false,
                ),
                SizedBox(
                  height: 20,
                ),
                RGTextFrield(
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.blueGrey,
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                RGTextFrield(
                  hintText: 'Confirm Password',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.blueGrey,
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      minimumSize: Size(327, 50),
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Text(
                      'CREATE',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.montserrat(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login here',
                          style: GoogleFonts.montserrat(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
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
    );
  }
}

class RGTextFrield extends StatelessWidget {
  final hintText;
  final prefixIcon;
  final suffixIcon;
  final obscureText;
  const RGTextFrield(
      {Key key,
      this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 10,
          offset: Offset(0, 3),
        ),
      ]),
      margin: EdgeInsets.only(left: 15, right: 15),
      child: TextField(
        obscureText: obscureText,
        style: GoogleFonts.montserrat(color: Colors.blueGrey),
        decoration: InputDecoration(
          hintText: hintText,
          helperStyle: GoogleFonts.montserrat(color: Colors.grey),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon ??
              Container(
                width: 0,
                height: 0,
              ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 1, color: Colors.blueGrey),
          ),
        ),
      ),
    );
  }
}
