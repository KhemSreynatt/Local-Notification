import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_botton.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_textformfile.dart';
import 'package:masmas_food_delivery/module/order/controller/controller.dart';
import 'package:masmas_food_delivery/widgets/custom_card.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final checkOutController = Get.put(OrderController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 200,
                        child: Text(
                          "Find Your Favoite Food",
                          style: TextStyle(
                              fontSize: 31,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const NotificationScreen(),
                          //   ),
                          // );
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                offset: const Offset(0, 1),
                                spreadRadius: 1,
                                blurRadius: 0,
                              )
                            ],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child:
                              Image.asset("assets/png/Icon_Notifiaction.png"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: CustomTextFiled(
                          prifixIcon: Image.asset("assets/png/Icon_Search.png"),
                          initialValues: "",
                          label: "",
                          hintText: "What do you want to order?",
                          hintTextStyle: TextStyle(
                              fontSize: 12,
                              color: const Color(0xffDA6317).withOpacity(0.4)),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const OrderDetails(),
                          //   ),
                          // );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xffF9A84D).withOpacity(0.1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Image.asset("assets/png/Filter.png"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: checkOutController.cardList
                        .asMap()
                        .entries
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Dismissible(
                              key: ValueKey(checkOutController.cardList[e.key]),
                              background: Container(
                                padding:
                                    const EdgeInsets.only(right: 20, top: 0),
                                alignment: Alignment.centerRight,
                                height: 105,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: const Color(0xffE86D28),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              direction: DismissDirection.endToStart,
                              onDismissed: (DismissDirection direction) {
                                checkOutController.cardList.removeAt(e.key);
                                checkOutController.update();
                              },
                              child: CustomCard(
                                isProccess: false,
                                cardModel: e.value,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: CustomButton(
                color: const Color(0xff53E88B),
                hight: 50,
                title: "Check Out",
                isDisable: false,
                isOutline: false,
                textStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
