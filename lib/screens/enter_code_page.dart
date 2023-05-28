import 'package:delivery_project/screens/location_page.dart';
import 'package:flutter/material.dart';

class EnterCodePage extends StatelessWidget {
  static const String id = 'enter_code_page';
  const EnterCodePage({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.all(30),
                  child: GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              //Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter your 4-digit code",
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
              //Input
              SizedBox(
                width: 330,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  decoration: const InputDecoration(
                    labelText: "Code",
                  ),
                obscureText: true,
                ),
              ),
              const SizedBox(height: 10),
              //Text: recent code
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                      "Recent Code",
                    style: TextStyle(
                      color: Color.fromRGBO(83, 177, 117, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              //Next button
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: (){Navigator.pushNamed(context, LocationPage.id);},
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 116, 107, 1),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                      size: 60,
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
