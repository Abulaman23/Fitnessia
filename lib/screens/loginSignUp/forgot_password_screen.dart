import 'package:fitness_tracker_app/constants/color.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(
            top: size.width * 0.05,
            left: size.width * 0.05,
            right: size.width * 0.05,
            bottom: size.width * 0.03,
          ),
          child: Column(
            children: [
              Text(
                'Forgot Password?'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.07,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'Enter your email address below  or \nlogin with another account!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: size.height * 0.055,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: size.width * 0.04,
                    ),
                    fillColor: Colors.grey.shade300,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: PrimaryColor,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: PrimaryColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    color: PrimaryColor,
                    fontSize: size.width * 0.04,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.35,
              ),
              Container(
                width: size.width * 0.9,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Try another way",
                    style: TextStyle(
                      color: PrimaryColor,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PrimaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.3,
                      vertical: size.height * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Send",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.height * 0.03,
                      fontWeight: FontWeight.bold,
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
