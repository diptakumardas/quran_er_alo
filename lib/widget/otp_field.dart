import 'package:flutter/material.dart';
class OTPField extends StatefulWidget {
  const OTPField({super.key});

  @override
  State<OTPField> createState() => _OTPFieldState();
}

class _OTPFieldState extends State<OTPField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,

        child:  TextField(
          keyboardType: TextInputType.number,
          maxLength: 1, // Set the maximum length for OTP input
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(236, 241, 255, 1),
            counterText: '', // Remove the character counter
            //hintText: 'Enter OTP',
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(236, 241, 255, 1)),
                borderRadius: BorderRadius.circular(20)

            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(236, 241, 255, 1)),
                borderRadius: BorderRadius.circular(20)

            ),
          ),
        )
    );
  }
}
