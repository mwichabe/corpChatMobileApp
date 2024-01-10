import 'package:corpchat/constants/colors.dart';
import 'package:corpchat/login/logIn.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/generals/Group 10252.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9.8,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Enjoy new experience of meetings with clients and employees',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 13.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Connectivity has been simplified for you',
                      style: TextStyle(color: Colors.grey),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogIn()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.secondaryColor),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
