import 'package:flutter/material.dart';
import 'package:umkm/service/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: ((context) => AuthService().handleAuthState())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/logo.jpg",
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
