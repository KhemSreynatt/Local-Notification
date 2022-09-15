import 'package:flutter/material.dart';

class CustomNitificatin extends StatelessWidget {
  const CustomNitificatin({Key? key, this.image, this.sub, this.title})
      : super(key: key);
  final String? title;
  final String? image;
  final String? sub;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 10),
      height: 105,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
      ),
      child: ListTile(
        leading: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 55,
          width: 55,
          child: Image.asset(
            "$image",
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "$title",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          "$sub",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
