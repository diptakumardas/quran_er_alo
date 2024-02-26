import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran_er_alo/view/forgot_password/update_password.dart';
import 'package:quran_er_alo/widget/button.dart';
import 'package:quran_er_alo/widget/otp_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 18.0, top: 100, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter  OTP code",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "We've sent you an OTP code to your registered\nemail address. Please check your inbox and\nenter the code here.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OTPField(),
                OTPField(),
                OTPField(),
                OTPField(),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
                child: Text(
              "You can resend the code after 59 sec",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            )),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              "Resend Code",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500),
            )),
            SizedBox(
              height: 50,
            ),

            Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const UpdatePasswordScreen()));
                  },
                  child: CustomButton(name: 'SUBMIT')
                )
            ),



          ],
        ),
      ),
    );
  }
}



/*
import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Countdown App'),
        ),
        body: Center(
          child: CountdownWidget(),
        ),
      ),
    );
  }
}

class CountdownWidget extends StatefulWidget {
  @override
  _CountdownWidgetState createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  int countdown = 59;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    const oneSecond = Duration(seconds: 1);
    Timer.periodic(oneSecond, (timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          timer.cancel(); // Stop the timer when countdown reaches 0
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$countdown',
      style: TextStyle(fontSize: 48),
    );
  }
}
*/
