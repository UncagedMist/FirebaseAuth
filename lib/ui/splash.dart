import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text(
        'Welcome',
        style: TextStyle(fontSize: 40.0, color: Colors.white),
      ),
      imageBackground: new AssetImage("assets/flut.png"),
      photoSize: 100.0,
      loaderColor: Colors.white,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Splash Screen"),
      ),
      body: new Center(
        child: new Text(
          "Home Page!",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
