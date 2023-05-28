import 'package:delivery_project/screens/sign_up_page.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  static const String id = 'location_page';
  const LocationPage({Key? key}) : super(key: key);

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
              //Image
              Image.asset("assets/images/map.png"),
              const SizedBox(height: 30),
              //Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Select Your Location",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //Lil Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Swithch on your location to stay in tune with\nwhat’s happening in your area",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              //Map_2
              Image.asset("assets/images/map_2.png", ),
              //Button
              GestureDetector(
                onTap: (){Navigator.pushNamed(context, SignUpPage.id);},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  height: 57,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 116, 107, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      "Submit Now",
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
