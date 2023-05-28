import 'package:delivery_project/screens/phone_number_page.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  static const String id = 'get_started_page';
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset("assets/images/vegetables.png"),
              ),
              //Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Get your groceries on\nyour door step",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //Input
              SizedBox(
                width: 330,
                child: TextFormField(
                  initialValue: "   +1",
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefix: Image.asset("assets/images/usa_icon.png"),
                      suffix: GestureDetector(
                        onTap: (){Navigator.pushNamed(context, PhoneNumberPage.id);},
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 116, 107, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //Lil Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Or connect with social media",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              //Google
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                height: 57,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 3),
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Sign in with Google",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Nunito",
                      ),
                    ),
                    Image(image: AssetImage("assets/images/google_icon.png"))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              //Facebook
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                height: 57,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(74, 102, 172, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Nunito",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Image(image: AssetImage("assets/images/facebook_icon.png"),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
