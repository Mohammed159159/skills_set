import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skills_set/Screens/Choose.dart';
import 'package:skills_set/Screens/login.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: ClipAgain(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.lightBlue[100],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.22),
                child: ClipPath(
                  clipper: ClipForMe(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    color: Colors.lightBlue[300],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 40),
                    child: Text(
                      'Skills Set',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.pink[200],
                        iconSize: 40,
                        onPressed: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Choose())),
                      ),
                      IconButton(
                          icon: Icon(Icons.settings),
                          color: Colors.pink[200],
                          iconSize: 40,
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.close),
                          color: Colors.pink[200],
                          iconSize: 40,
                          onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) => LogIn())))
                    ],
                  )
                ],
              )
            ],
          ),
          Text('Start Learning:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              )),
          Expanded(
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.pink[50],
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 25,
                                      color: Colors.black26,
                                      spreadRadius: 3)
                                ]),
                            child: IconButton(
                              icon: Icon(Icons.add_circle),
                              iconSize: 60,
                              color: Colors.pink[300],
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.pink[50],
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 25,
                                      color: Colors.black26,
                                      spreadRadius: 3)
                                ]),
                            child: IconButton(
                              icon: Icon(Icons.add_circle),
                              iconSize: 60,
                              color: Colors.pink[300],
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
              height: 50,
              child: Text(
                'Start by adding a course',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

class ClipAgain extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height * 0.56);
    path.quadraticBezierTo(size.width * 7 / 18, size.height, size.width * 2 / 3,
        size.height * 0.72);
    path.quadraticBezierTo(size.width * 19 / 24, size.height * 0.52, size.width,
        size.height * 0.89);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipForMe extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height * 0.3);
    path.lineTo(0.0, size.height * 0.6);
    path.quadraticBezierTo(size.width * 7 / 18, size.height, size.width * 2 / 3,
        size.height * 0.5);
    path.quadraticBezierTo(size.width * 19 / 24, size.height * 0.3, size.width,
        size.height * 0.75);
    path.lineTo(size.width, size.height * 0.6);
    path.quadraticBezierTo(size.width * 13 / 18, size.height * 5 / 168,
        size.width * 4 / 9, size.height * 0.5);
    path.quadraticBezierTo(
        size.width * 11 / 36, size.height * 0.7, 0.0, size.height * 5 / 84);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
