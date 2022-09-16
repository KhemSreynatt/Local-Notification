import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_botton.dart';
import 'package:masmas_food_delivery/module/order/screen/checkout.dart';

class CustomCard extends StatelessWidget {
  final CardModel? cardModel;
  final bool? isProccess;

  const CustomCard({
    super.key,
    this.cardModel,
    this.isProccess = false,
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
                    isProccess == true
                        ? Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.5),
                              color: const Color(0xff53E88B),
                            ),
                            child: Center(
                              child: Text(
                                'Proccess',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        : Container(
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
                                    color: const Color(0xff15BE77)
                                        .withOpacity(0.1),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Color(0xff15BE77),
                                  ),
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
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
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
                      builder: (context) => const CheckOutScreen(),
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

class CustomCardDelivery extends StatelessWidget {
  final String? title;
  final String? svg;
  final String? place;
  final GestureTapCallback? ontap;
  final bool? isSetLocation;
  final bool? isEdit;
  const CustomCardDelivery({
    super.key,
    this.title,
    this.svg,
    this.place,
    this.ontap,
    this.isSetLocation = false,
    this.isEdit = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isSetLocation == false ? 120 : 143,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xff5A6CEA).withOpacity(0.07),
          blurRadius: 20,
          offset: const Offset(26, 12),
        ),
      ], borderRadius: BorderRadius.circular(22), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  title!,
                  style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                if (isEdit == true)
                  GestureDetector(
                    onTap: ontap,
                    child: Text(
                      'Edit',
                      style: GoogleFonts.poppins(
                          color: const Color(0xff15BE77),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 33,
                  color: Colors.transparent,
                  child: SvgPicture.asset(
                    svg!,
                    fit: BoxFit.none,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place!,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (isSetLocation == true)
                        Text(
                          'Set location',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff15BE77),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardPayMent extends StatelessWidget {
  const CustomCardPayMent(
      {super.key,
      this.svg,
      this.title,
      this.number,
      this.disableRow = true,
      this.ontap,
      this.isSelect,
      this.paymentModel});
  final String? svg;
  final String? title;
  final String? number;
  final bool? disableRow;
  final bool? isSelect;
  final PaymentModel? paymentModel;
  final GestureTapCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: disableRow == true ? 103 : 72,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff5A6CEA).withOpacity(0.07),
                blurRadius: 20,
                offset: const Offset(26, 12),
              ),
            ],
            borderRadius: BorderRadius.circular(22),
            color: isSelect == true ? Colors.white : const Color(0xffF6F6F6)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            children: [
              if (disableRow == true)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      paymentModel!.title!,
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Text(
                      'Edit',
                      style: GoogleFonts.poppins(
                          color: const Color(0xff15BE77),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              // const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 33,
                    color: Colors.transparent,
                    child: SvgPicture.asset(
                      paymentModel!.svg!,
                      fit: BoxFit.none,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Spacer(),
                  Text(
                    paymentModel!.number!,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
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

class DeliverModel {
  final String? svg;
  final String? title;
  final String? place;
  DeliverModel({
    this.svg,
    this.place,
    this.title,
  });
}

class PaymentModel {
  final String? title;
  final String? svg;
  final String? number;

  PaymentModel({
    this.svg,
    this.title,
    this.number,
  });
}
