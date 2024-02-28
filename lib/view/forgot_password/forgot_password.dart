import 'package:flutter/material.dart';
import 'package:quran_er_alo/widget/button.dart';
import 'package:quran_er_alo/widget/text_field.dart';

import 'otp_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  //TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 100.0, right: 20, left: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot your password',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "No worries,we'll help you to reset it.please enter\nthe email address with your Quraner Alo\naccount",
              style: TextStyle(
                fontSize: 16,color: Colors.grey
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomeTextField(title: "Your Registered Email", hintText: "Email", onChanged: () {},),
            const SizedBox(
              height: 70,
            ),
            Center(
                child: CustomButton(name: "SEND OTP",onClicked: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                },)),
          ],
        ),
      ),
    );
  }
}
