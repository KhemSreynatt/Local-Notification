import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_botton.dart';
import 'package:masmas_food_delivery/module/order/screen/confirm_order.dart';

class CustomCard extends StatelessWidget {
  final CardModel? cardModel;

  const CustomCard({
    super.key,
    this.cardModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff5A6CEA).withOpacity(0.07),
            blurRadius: 6,
            offset: const Offset(26, 12),
          ),
        ],
        borderRadius: BorderRadius.circular(22),
        gradient: const LinearGradient(colors: [
          Color(0xfffafafa),
          Color(0xfffafafa),
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            Container(
              height: 62,
              width: 62,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.red),
              child: Image.asset(
                cardModel!.image!,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardModel!.title!,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Text(
                      cardModel!.subTitle!,
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Container(
                      height: 26,
                      width: 95,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 26,
                            width: 26,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xff15BE77).withOpacity(0.1),
                            ),
                            child: const Icon(Icons.remove),
                          ),
                          Text(
                            "1",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff53E88B),
                              ),
                              child: const Icon(Icons.remove)),
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  cardModel!.amount!,
                  style: GoogleFonts.poppins(
                      color: const Color(0xff53E88B),
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardMyOrder extends StatelessWidget {
  const CustomCardMyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff53E88B),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Sub-Total',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  '\$120',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Delivery Charge',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  '\$10',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Discount',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  '\$20',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Total',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Text(
                  '\$150',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              color: Colors.white,
              hight: 50,
              isDisable: false,
              isOutline: false,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConfirmOrder(),
                    ));
              },
              title: 'Place My Order',
              textStyle: GoogleFonts.poppins(
                  color: const Color(0xff53E88B),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class CardModel {
  final String? image;
  final String? title;
  final String? subTitle;
  final String? amount;
  CardModel({
    this.image,
    this.title,
    this.subTitle,
    this.amount,
  });
}
