import 'package:flutter/material.dart';
import 'package:flutter_app/SignupScreen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[400],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'lib/images/book.jpg',
                height: 300,
                width: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 1,
                  bottom: 1,
                  left: 60,
                  right: 40,
                ),
                child: Text(
                  'You can study various science right at home',
                  style: TextStyle(fontSize: 28.0, color: Colors.white),
                ),
              ),
              ElevatedButton(
                child: Text(
                  'Next >',
                  style: TextStyle(fontSize: 24.0, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                onPressed: () {
                  SignupScreen();
                },
              ),
              Text(
                'Dont have an account?',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text(
                  'Sign in here',
                  style: TextStyle(fontSize: 28.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
