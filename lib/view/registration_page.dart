import 'package:flutter/material.dart';
import 'package:quran_er_alo/network/network_managerr.dart';
import 'package:quran_er_alo/network/request_model/signup_request_model.dart';
import 'package:quran_er_alo/view/home_page.dart';
import 'package:quran_er_alo/view/login_screen.dart';
import 'package:quran_er_alo/widget/button.dart';
import 'package:quran_er_alo/widget/text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  Future<void> signup(String username, String password) async {

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email and password cannot be empty.'),
          duration: Duration(seconds: 3),
        ),
      );
      return;
    }



    setState(() {
      isLoading = true;
    });

    try {
      SignUpRequest request =
          SignUpRequest(email: username, password: password);
      await NetworkManager().signUp(request);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration complete!'),
          duration: Duration(seconds: 3),
        ),
      );

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogInScreen()));
    } catch (error) {
     ;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration failed. Please try again.'),
          duration: Duration(seconds: 3),
        ),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

 /* void signUp(String username, password) {
    NetworkManager().signUp(SignUpRequest(email: username, password: password));
  }*/

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
              CustomeTextField(
                title: "First Name",
                hintText: "First Name",
                obscureText: false,
                onChanged: () {},errorMessage:  ""
              ),
              SizedBox(
                height: 8,
              ),
              CustomeTextField(
                obscureText: false,
                title: "Last Name",
                hintText: "Last Name",
                onChanged: () {},errorMessage:  ""
              ),
              const SizedBox(
                height: 8,
              ),
              CustomeTextField(
                obscureText: false,
                title: "User Name",
                hintText: "User Name",
                onChanged: () {},errorMessage:  ""
              ),
              const SizedBox(
                height: 8,
              ),
              CustomeTextField(
                obscureText: false,
                title: "Email",
                hintText: "Email",
                onChanged: (text) {
                  emailController.text = text;
                },errorMessage:  ""
              ),
              const SizedBox(
                height: 8,
              ),
              CustomeTextField(
                obscureText: true,
                title: "Password",
                hintText: "Password",
                onChanged: (text) {
                  passwordController.text = text;
                },errorMessage:  ""
              ),
              const SizedBox(
                height: 8,
              ),
              CustomeTextField(
                obscureText: true,
                title: "Confirm Password",
                hintText: "Confirm Password",
                onChanged: () {},errorMessage:  ""
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: isLoading
                      ? CircularProgressIndicator() // Loading indicator
                      : CustomButton(
                          name: "REGISTER",
                          onClicked: () {
                            signup(
                                emailController.text, passwordController.text);
                          },
                        )),
              const SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
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
                  Text(
                    ' or ',
                    style: TextStyle(fontSize: 18),
                  ),
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
                      child: Image.asset(
                        'images/google_logo.png',
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "Continue with Google",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    )
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
                      child: Image.asset(
                        'images/apple_logo.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Continue with Apple",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ])),
      ),
    );
  }
}
