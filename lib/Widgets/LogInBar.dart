import 'package:flutter/material.dart';


// ignore: must_be_immutable
class LogInBar extends StatefulWidget {
  String hinttext;
  LogInBar(this.hinttext);
  @override
  _LogInBarState createState() => _LogInBarState();
}
class _LogInBarState extends State<LogInBar> {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                spreadRadius: 3
              )
            ],
          ),
          child: ClipPath(
            clipper: MyClipp(),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)
                  ),

              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 11),
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: this.widget.hinttext, hintStyle: TextStyle(
                    color: Colors.black54
                  )),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}

class MyClipp extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.quadraticBezierTo(0.0, size.height * 0.5 + 20, 7, size.height);
    path.lineTo(size.width - 7,size.height );
    path.quadraticBezierTo(size.width, size.height * 0.5 + 20, size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
