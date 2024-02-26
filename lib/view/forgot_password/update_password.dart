import 'package:flutter/material.dart';
import 'package:quran_er_alo/view/home_page.dart';
import 'package:quran_er_alo/view/login_screen.dart';
import 'package:quran_er_alo/widget/button.dart';
import 'package:quran_er_alo/widget/text_field.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({super.key});

  @override
  State<UpdatePasswordScreen> createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, top: 100, right: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Secure Your Account",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Almost there! create a new passwordfor your\nQuraner Alo account to keep it secure.Remember\nto choose a strong and unique password",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomeTextField(
                  title: "Password",
                  hintText: "Password",
                  controller: TextEditingController()),
              const SizedBox(
                height: 10,
              ),
              CustomeTextField(
                  title: "Confirm Password",
                  hintText: "Confirm Password",
                  controller: TextEditingController()),
              const SizedBox(
                height: 50,
              ),
              Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogInScreen()));
                      },
                      child: const CustomButton(name: "UPDATE PASSWORD"))),
            ]),
      ),
    );
  }
}
