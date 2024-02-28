import 'dart:ffi';

import 'package:flutter/material.dart';
class CustomeTextField extends StatefulWidget {
  const CustomeTextField({super.key,required this.title,required this.hintText, required this.onChanged, required this.obscureText, required this.errorMessage});
     final String title, hintText, errorMessage;
     final Function onChanged;
     final bool obscureText;

  @override
  State<CustomeTextField> createState() => _CustomeTextFieldState();
}

class _CustomeTextFieldState extends State<CustomeTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        "${widget.title}",
        style: TextStyle(fontSize: 18,color: Colors.black87),
      ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 55,
          child: TextFormField(
            validator: (value){
              if(value!.isNotEmpty){
                return widget.errorMessage;
              }
            },
            obscureText: widget.obscureText,
            onChanged: (text) {widget.onChanged.call(text);},
            decoration: InputDecoration(
                hintText: '${widget.hintText}',
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: const Color.fromRGBO(235, 241, 255, 1),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(235, 241, 255, 1)),
                  borderRadius: BorderRadius.circular(12),

                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(235, 241, 255, 1)),
                  borderRadius: BorderRadius.circular(12),
                )
            ),
          ),
        ),
      ]
    );
  }
}
