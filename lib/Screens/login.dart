import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skills_set/Screens/Choose.dart';
import 'package:skills_set/Widgets/LogInBar.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Skills Set',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.import_contacts,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 110,
              ),
              Text(
                'Log in to SkillsSet below',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 17.0),
                child: LogInBar('User name or Email'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    LogInBar('Password'),
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                        icon: Icon(
                          FontAwesomeIcons.signInAlt,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => Choose()))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38),
                child: Row(
                  children: [
                    Text('New to skills Set? create an account'),
                    Text(
                      ' Here',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
