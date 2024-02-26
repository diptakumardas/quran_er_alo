import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.name});
  final String name;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: 390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue,
      ),
      child:  Center(
          child: Text(
            "${widget.name}",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          )),
    );

  }
}
