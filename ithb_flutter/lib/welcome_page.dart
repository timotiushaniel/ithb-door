import 'package:flutter/material.dart';
import 'package:ithb_flutter/home_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final textController = TextEditingController();
  String _userName;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 150.0),
            ),
            Image.asset('images/ithb-main.png', width: 200, height: 150),
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Staatliches',
                    ),
                  ),
                  TextField(
                    onChanged: (String value) {
                      setState(() {
                        _userName = value;
                      });
                    },
                    decoration: InputDecoration(hintText: "Username, email"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Staatliches',
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    maxLength: 16,
                    maxLengthEnforced: true,
                    onChanged: (String value) {
                      setState(() {
                        _password = value;
                      });
                    },
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(height: 5.0),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.black)),
                    color: Colors.blue[900],
                    textColor: Colors.white,
                    child: Text("LOGIN", style: TextStyle(fontSize: 15)),
                    onPressed: () {
                      if (_userName != null &&
                          _password != null &&
                          _password.length >= 6) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage(userName: _userName);
                        }));
                      } else if (_userName != null &&
                          _password != null &&
                          _password.length < 6) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                  "Password length must be more than 5 characters!"),
                              actions: [
                                FlatButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                  "Please input your username and password!"),
                              actions: [
                                FlatButton(
                                  child: Text("Ok"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          },
                        );
                        return WelcomePage();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
