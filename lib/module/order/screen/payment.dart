import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmas_food_delivery/widgets/custom_card.dart';

import '../controller/controller.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentController = Get.put(OrderController());
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(
          () => Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffF9A84D).withOpacity(0.1),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                            color: Color(0xffDA6317),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Payment',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ),
                      Column(
                        children: paymentController.paymentList
                            .asMap()
                            .entries
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: CustomCardPayMent(
                                  paymentModel: e.value,
                                  isSelect:
                                      paymentController.isClick.value == e.key,
                                  disableRow: false,
                                  ontap: () {
                                    paymentController.isClick.value = e.key;
                                    paymentController.update();
                                  },
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      // const CustomCardPayMent(
                      //   disableRow: false,
                      //   title: 'Payment Method',
                      //   number: '2121 6352 8465 ****',
                      //   svg: 'assets/svg/paypal Logo.svg',
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
