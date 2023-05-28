import 'package:delivery_project/screens/sign_up_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // Back icon
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //Image
              Image.asset("assets/images/delivery_man.png"),
              //Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 10),
              //Lil Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Enter your login details and password",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              //Input: email
              SizedBox(
                width: 330,
                child: TextFormField(
                  initialValue: "imshuvo97@gmail.com",
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //Input: password
              SizedBox(
                width: 330,
                child: TextFormField(
                  initialValue: "12345678",
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffix: GestureDetector(
                      onTap: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      child: Icon(
                          _isObscure ? CupertinoIcons.eye: CupertinoIcons.eye_slash,

                      ),
                    ),
                  ),
                  obscureText: _isObscure,
                ),
              ),
              const SizedBox(height: 10),
              //Text: forgot password
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: (){Navigator.pushNamed(context, SignUpPage.id);},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 116, 107, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              //Button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                height: 57,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 116, 107, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Nunito",
                    ),
                  ),
                ),
              ),
              //Rich Text
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    const TextSpan(text: "Don’t have account? "),
                    TextSpan(
                      text: "Create new account",
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 116, 107, 1),
                      ),
                      recognizer: TapGestureRecognizer()..onTap = (){Navigator.pushReplacementNamed(context, SignUpPage.id);}
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
