// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:masmas_food_delivery/module/home/model/model.dart';

class CustomBottomNavigetorbar extends StatelessWidget {
  CustomBottomNavigetorbar(
      {Key? key,
      required this.model,
      this.index,
      this.selectedIndex,
      this.onTap})
      : super(key: key);
  ModelBottom model;
  int? index = 0;
  Function? onTap;
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: const EdgeInsets.only(left: 8, right: 8),
        height: 44,
        width: index == selectedIndex ? 105 : 50,
        decoration: BoxDecoration(
            color: index == selectedIndex
                ? const Color(0xff53E88B).withOpacity(0.3)
                : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(model.svg!),
            const SizedBox(
              width: 10,
            ),
            index == selectedIndex ? Text(model.title!) : Container(),
          ],
        ),
      ),
    );
  }
}
