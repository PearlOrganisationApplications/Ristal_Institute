import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import '../../../App/Preferences/app_preferences.dart';
import '../Home Sceen/home.screen.dart';
import '../LoginScreen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {




  void checkUserAlreadyLogin() {
    //enterFullScreen(FullScreenMode.EMERSIVE_STICKY);
    bool isUserLogin = AppPreferences.getUser()!;
    if(isUserLogin){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen())
      );
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.green,
        statusBarColor: Colors.green
      ));
    });
    Timer(
        const Duration(milliseconds: 2000),
        () => checkUserAlreadyLogin()
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  elevation: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Hero(
                      tag: "logo",
                      child: Image.asset(
              "assets/images/Logo.PNG",
              height: 150,
              width: 150,
            ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    var color = Colors.white;
    bool isDarkMode = false;
    try {
      var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
      isDarkMode = brightness == Brightness.dark;
      if (isDarkMode) {
        color = Colors.black;
      }
    }on Exception {
      if (kDebugMode) {
        print('Error on getting system theme for system navigation bar on course.page.dart - On Dispose');
      }
    }
    finally{
      WidgetsBinding.instance.addPostFrameCallback((_) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: color,
          systemNavigationBarColor: color,
        ));
      });
    }

    super.dispose();
    //exitFullScreen();

  }
}
