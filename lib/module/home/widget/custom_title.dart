import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: const Color(0xffFEAD1D).withOpacity(0.1),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 14, top: 14),
      child: Text(
        title!,
        style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xffDA6317)),
      ),
    );
    // return ElevatedButton(
    //   onPressed: () {},
    //   style: ElevatedButton.styleFrom(
    //       backgroundColor: const Color(0xffF9A84D).withOpacity(0.3),
    //       elevation: 0,
    //       shape:
    //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    //       padding: const EdgeInsets.all(20)),
    //   child: Text(
    //     title!,
    //     style: const TextStyle(
    //         fontSize: 12,
    //         fontWeight: FontWeight.w400,
    //         color: Color(0xffDA6317)),
    //   ),
    // );
  }
}
