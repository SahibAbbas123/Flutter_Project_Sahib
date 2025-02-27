import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _BottomNavState();
}

class _BottomNavState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("setting page ")],
    );
  }
}
