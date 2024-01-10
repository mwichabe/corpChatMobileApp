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
              Image.asset('assets/generals/Group 10252.png',fit: BoxFit.cover,),
              SizedBox(
                height: MediaQuery.of(context).size.height / 9.8,
              ),
              const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Enjoy new experience of meetings with \n clients and employees',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 13.0),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Connectivity has been simplified for you',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    )),
              ),
              ElevatedButton(onPressed: (){},
                  child: Text('Get Started')
              )
            ],
          ),
        ),
      ),
    );
  }
}
