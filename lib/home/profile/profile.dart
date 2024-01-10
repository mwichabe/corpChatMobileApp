import 'package:corpchat/constants/colors.dart';
import 'package:corpchat/widgets/profileTabs.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 58.0, bottom: 20),
                child: Center(
                    child: Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
              ),
              const CircleAvatar(
                radius: 60,
                backgroundColor: AppColor.thirdPartyColor,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 57,
                ),
              ),
              //this static text will be changed
              const Text(
                'Mormor Gabriel',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              const Text('mormorgabriel@gmail.com'),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.secondaryColor),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
              const Divider(
                height: 30,
                color: Colors.grey,
              ),
              ProfileTabs(
                  iconData: Icons.language,
                  text: 'Languages',
                  onClick: () {
                    print('Languages is pressed');
                  }),
              ProfileTabs(
                  iconData: Icons.subscriptions,
                  text: 'Subscriptions',
                  onClick: () {
                    print('Subscriptions is pressed');
                  }),
              ProfileTabs(
                  iconData: Icons.location_on_outlined,
                  text: 'Location',
                  onClick: () {}),
              const Divider(
                height: 30,
                color: Colors.grey,
              ),
              ProfileTabs(
                  iconData: Icons.settings,
                  text: 'Settings',
                  onClick: () {
                    print('Settings is pressed');
                  }),
              ProfileTabs(
                  iconData: Icons.history,
                  text: 'Clear History',
                  onClick: () {
                    print('Clera');
                  }),
              ProfileTabs(
                  iconData: Icons.exit_to_app, text: 'Log Out', onClick: () {})
            ],
          ),
        ),
      ),
    ));
  }
}
