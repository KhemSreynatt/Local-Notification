import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmas_food_delivery/module/order/controller/controller.dart';
import 'package:masmas_food_delivery/widgets/custom_card.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final orderController = Get.put(OrderController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
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
                      "Order Details",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      height: 103,
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
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Delier To',
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
                            Row(
                              children: const [],
                            )
                          ],
                        ),
                      ),
                    ),
                    // Column(
                    //   children: orderController.cardList
                    //       .asMap()
                    //       .entries
                    //       .map((e) => Padding(
                    //             padding: const EdgeInsets.only(top: 20),
                    //             child: Dismissible(
                    //               key:
                    //                   ValueKey(orderController.cardList[e.key]),
                    //               background: Container(
                    //                 padding: const EdgeInsets.only(
                    //                     right: 20, top: 0),
                    //                 alignment: Alignment.centerRight,
                    //                 height: 105,
                    //                 width: double.infinity,
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(22),
                    //                   color: const Color(0xffE86D28),
                    //                 ),
                    //                 child: Column(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.center,
                    //                   children: const [
                    //                     Icon(
                    //                       Icons.delete,
                    //                       color: Colors.white,
                    //                       size: 20,
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               direction: DismissDirection.endToStart,
                    //               onDismissed: (DismissDirection direction) {
                    //                 // orderController.cardList(e.value.id!);
                    //                 orderController.cardList.removeAt(e.key);
                    //                 orderController.update();
                    //               },
                    //               child: CustomCard(
                    //                 cardModel: e.value,
                    //               ),
                    //             ),
                    //           ))
                    //       .toList(),
                    // ),
                  ],
                ),
              ),
            ),
            const CustomCardMyOrder(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
