import 'package:delivery_project/screens/enter_code_page.dart';
import 'package:flutter/material.dart';

class PhoneNumberPage extends StatelessWidget {
  static const String id = 'phone_number_page';
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/girl_with_phone.png"),
              //Text
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter your Phone number",
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
                  initialValue: "   +1",
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefix: Image.asset("assets/images/usa_icon.png"),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              //Next button
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: (){Navigator.pushNamed(context, EnterCodePage.id);},
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
