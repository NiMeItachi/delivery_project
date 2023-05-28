import 'package:delivery_project/screens/get_started_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class EnterPage extends StatelessWidget {
  static const String id = 'enter_page';
  const EnterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //Image
              const SizedBox(height: 150),
              Image.asset("assets/images/delivery.png"),
              //Text
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Get the fastest\nDelivery groceries at home",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              //Lil Text
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Ger your groceries in as fast as one hour",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //Button: Get Started
              const SizedBox(height: 40),
              GestureDetector(
                onTap: (){Navigator.pushNamed(context, GetStartedPage.id);},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  height: 57,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 116, 107, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Nunito",
                      ),
                    ),
                  ),
                ),
              ),
              //Button: Login
              const SizedBox(height: 20),
              GestureDetector(
                onTap: (){Navigator.pushNamed(context, LoginPage.id);},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  height: 57,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(83, 177, 117, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
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
