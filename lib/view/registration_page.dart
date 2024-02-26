import 'package:flutter/material.dart';
import 'package:quran_er_alo/view/login_screen.dart';
import 'package:quran_er_alo/widget/button.dart';
import 'package:quran_er_alo/widget/text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                child: const Column(
                  children: [
                    Text(
                      "Registration",
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
              CustomeTextField(title: "First Name", hintText: "First Name", controller: TextEditingController()),

              SizedBox(
                height: 8,
              ),
              CustomeTextField(title: "Last Name", hintText: "Last Name", controller: TextEditingController()),

              const SizedBox(
                height: 8,
              ),
              CustomeTextField(title: "User Name", hintText: "User Name", controller: TextEditingController()),
              const SizedBox(
                height: 8,
              ),
              CustomeTextField(title: "Email", hintText: "Email", controller: TextEditingController()),
              const SizedBox(
                height: 8,
              ),
              CustomeTextField(title: "Password", hintText: "Password", controller: TextEditingController()),
              const SizedBox(
                height: 8,
              ),
              CustomeTextField(title: "Confirm Password", hintText: "Confirm Password", controller: TextEditingController()),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: CustomButton(name: "REGISTER")
              ),
            const SizedBox(
              height: 30,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                      },
                      child: const Text(
                        "Login",
                        style:
                        TextStyle(fontSize: 20, color: Colors.blueAccent),
                      )),

                  ]),


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
                      color: Color.fromRGBO(235, 241, 255, 1),
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
                      color: Color.fromRGBO(235, 241, 255, 1),
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset('images/apple_logo.png',height: 40,),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text("Continue with Apple",style: TextStyle(fontSize: 18,color: Colors.grey),)
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),







                ])),
      ),
    );
  }
}
