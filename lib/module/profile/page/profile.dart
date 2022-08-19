import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String? name;
  final String? sex;
  const ProfilePage({Key? key, @queryParam this.name, @queryParam this.sex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Profile Page "),
      ),
      body: Center(
        child: Text("Name:$name and Sex: $sex"),
      ),
    );
  }
}
