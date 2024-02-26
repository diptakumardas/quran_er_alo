import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quran_er_alo/view/forgot_password/forgot_password.dart';
import 'package:quran_er_alo/view/registration_page.dart';
import 'package:quran_er_alo/widget/button.dart';
import 'package:quran_er_alo/widget/text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                child:  const Column(
                  children: [
                    Text(
                      "Let's sign you in.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'Sign in with your data that you have\n    entered during your registration',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              CustomeTextField(title: 'Email', hintText: "Email",controller: TextEditingController(),),

               const SizedBox(
                height: 8,
              ),
              CustomeTextField(title: "Password", hintText: "Password", controller: TextEditingController()),
               SizedBox(
                height: 8,
              ),
               Padding(
                padding: const EdgeInsets.only(left: 160.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));},
                  child: const Text(
                    "Lost your password?",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: CustomButton(name: "LOGIN")
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                      },
                      child: const Text(
                        "Registrstion",
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent),
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Text(' or ',style: TextStyle(fontSize: 18),),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: 500,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(235, 241, 255, 1),
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset('images/google_logo.png',height: 40,),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text("Continue with Google",style: TextStyle(fontSize: 18,color: Colors.grey),)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 500,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(235, 241, 255, 1),
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Image.asset('images/apple_logo.png',height: 40,),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text("Continue with Apple",style: TextStyle(fontSize: 18,color: Colors.grey),)
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
