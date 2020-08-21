import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skills_set/Screens/MainMenu.dart';

class Choose extends StatefulWidget {
  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Hey!', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),),
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'We\'re glad you chose skills set to begin your learning journey. To move a head, choose one of the following options.',
                  style: TextStyle(

                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),)),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MainMenu())),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                        height: 175,
                        width: 175,
                        decoration: BoxDecoration(
                            color: Colors.pink[50],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              spreadRadius: 3
                            )
                          ]
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 5,
                            color: Colors.lightBlue,
                          ),
                        ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pre-Made Course:', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19
                          ),),
                          Text('|Recommended|', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                          ),)

                        ],
                      ),
                    ),
                    Positioned(
                        left: 10,
                        bottom: 20,
                        child: SvgPicture.asset('assets/done.svg', height: 125, width: 125,)),

                  ],
                ),
              ),
            ),
            SizedBox(height: 60,),
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MainMenu())),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      height: 175,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.pink[50],
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                spreadRadius: 3
                            )
                          ]
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 5,
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Custom:', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19
                          ),),
                          Text('|Create Custom', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                          ),),
                          Text('preference-based portion|', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12
                          ),)

                        ],
                      ),
                    ),
                    Positioned(
                        left: 10,
                        bottom: 20,
                        child: SvgPicture.asset('assets/done.svg', height: 125, width: 125,)),

                  ],
                ),
              ),
            )

          ],
        ));
  }
}
