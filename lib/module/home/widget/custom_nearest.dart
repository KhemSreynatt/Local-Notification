import 'package:flutter/material.dart';
import 'package:masmas_food_delivery/module/home/model/model_res.dart';

class CustomNearest extends StatelessWidget {
  CustomNearest({Key? key, this.model, this.height, this.width})
      : super(key: key);
  ModelNearest? model;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 0,
            spreadRadius: 1,
            offset: Offset(1, 0),
            color: Colors.white,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 90,
            width: 100,
            child: Image.asset(
              model!.image!,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            model!.title!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            model!.mins!,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: const Color(0xff000000).withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
