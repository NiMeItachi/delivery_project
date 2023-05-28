import 'package:delivery_project/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static const String id = 'sign_up_page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              Image.asset("assets/images/delivery_boy.png"),
              //Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "Sign up",
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
                  "Enter your details for new account",
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
              //Input: name
              SizedBox(
                width: 330,
                child: TextFormField(
                  initialValue: "Goldcrown Labs",
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Name",
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              //Rich Text
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      children: [
                        TextSpan(text: "By continuing you agree to our "),
                        TextSpan(text: "Terms of Service", style: TextStyle(
                          color: Color.fromRGBO(83, 177, 117, 1),
                        ),),
                        TextSpan(text: " and "),
                        TextSpan(text: "Privacy Policy", style: TextStyle(
                          color: Color.fromRGBO(83, 177, 117, 1),
                        ),),
                        TextSpan(text: "."),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //Button
              GestureDetector(
                onTap: (){Navigator.pushNamed(context, LoginPage.id);},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  height: 57,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 116, 107, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Nunito",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
