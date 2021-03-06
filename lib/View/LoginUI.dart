import 'package:assignment_app/View/NavigationUI.dart';
import 'package:flutter/material.dart';
import '../Controller/LoginValidator.dart';

/// User Interface for Login UI. Display the login button and logo.
/// This UI includes: Login button and logo
/// @author  Team Superman
/// @version 1.0
/// @since   2020-04-08
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<Color> _colors = [Colors.blue, Colors.purpleAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.camera,
                      size: 80,
                      color: Colors.white,
                    ),
                    Text(
                      'Sight',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: _colors),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              //   FlutterLogo(size: 150),
              SizedBox(height: 50),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  /// This method returns a button for sign in
  /// @param Nothing
  /// @return Outline Button
  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return Navigation();
              },
            ),
          );
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            SizedBox(
              width: 10,
            ),
            Text(
              'Sign In',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
