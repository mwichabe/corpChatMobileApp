import 'package:flutter/material.dart';

class ProfileTabs extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback onClick;
  const ProfileTabs(
      {super.key,
      required this.iconData,
      required this.text,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: IconButton(
          onPressed: onClick,
          icon: const Icon(Icons.arrow_forward_ios_outlined)),
    );
  }
}
