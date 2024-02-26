import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 241, 255,1),
      body: Padding(
        padding: const EdgeInsets.only(top: 250.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: AssetImage('images/logo.webp'),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "কুরআনের আলোতে আপনাকে স্বাগতম",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'কুরআন চর্চার প্লাটফর্ম',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 120,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                },
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStatePropertyAll(Colors.lightBlue)),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ))


          ],
        ),
      ),
    );
  }
}
