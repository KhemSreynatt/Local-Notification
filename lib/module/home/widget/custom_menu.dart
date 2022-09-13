import 'package:flutter/material.dart';

import '../model/model_menu.dart';

class CustomMenu extends StatelessWidget {
  CustomMenu({Key? key, this.model}) : super(key: key);
  ModelMenu? model;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 8),
        margin: const EdgeInsets.only(top: 20),
        height: 87,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
        ),
        child: ListTile(
          leading: Container(
            alignment: Alignment.center,
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage(
                  model!.image!,
                ),
              ),
            ),
          ),
          title: Text(
            model!.title!,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            model!.sub!,
            style: const TextStyle(fontSize: 12, color: Color(0xff3B3B3B)),
          ),
          trailing: Text(
            "\$${model!.price!}",
            style: const TextStyle(
                fontSize: 22,
                color: Color(0xffFEAD1D),
                fontWeight: FontWeight.w500),
          ),
        ));
  }
}
