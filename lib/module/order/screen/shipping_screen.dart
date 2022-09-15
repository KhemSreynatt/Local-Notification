import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmas_food_delivery/widgets/custom_card.dart';

class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
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
                      'Shipping',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    CustomCardDelivery(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShippingScreen(),
                          ),
                        );
                      },
                      title: 'Order Location',
                      place: '4517 Washington Ave. Manchester, Kentucky 39495',
                      svg: 'assets/svg/Icon Location.svg',
                      isSetLocation: false,
                      isEdit: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomCardDelivery(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShippingScreen(),
                          ),
                        );
                      },
                      title: 'Deliver To',
                      place: '4517 Washington Ave. Manchester, Kentucky 39495',
                      svg: 'assets/svg/Icon Location.svg',
                      isSetLocation: true,
                      isEdit: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
