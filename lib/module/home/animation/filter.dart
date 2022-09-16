import 'package:flutter/material.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_botton.dart';

import '../../notification/screen/notification_screen.dart';
import '../widget/custom_textformfile.dart';
import '../widget/custom_title.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()));
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
                    child: Image.asset("assets/png/Icon_Notifiaction.png"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: CustomTextFiled(
                prifixIcon: Image.asset("assets/png/Icon_Search.png"),
                initialValues: "",
                label: "",
                hintText: "What do you want to order?",
                hintTextStyle: TextStyle(
                  fontSize: 12,
                  color: const Color(0xffDA6317).withOpacity(0.4),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Type",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                CustomTitle(
                  title: "Restaurant",
                ),
                SizedBox(
                  width: 20,
                ),
                CustomTitle(
                  title: "Menu",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Location",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                CustomTitle(
                  title: "1 Km",
                ),
                SizedBox(
                  width: 20,
                ),
                CustomTitle(
                  title: ">10 Km",
                ),
                SizedBox(
                  width: 20,
                ),
                CustomTitle(
                  title: "<10 Km",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Food",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: const [
                CustomTitle(
                  title: "Cake",
                ),
                CustomTitle(
                  title: "Soup",
                ),
                CustomTitle(
                  title: "Main Course",
                ),
                CustomTitle(
                  title: "Appetizer",
                ),
                CustomTitle(
                  title: "Dessert",
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
        height: 57,
        child: CustomButton(
          isDisable: false,
          isOutline: false,
          onPressed: () {},
          color: const Color(0xff53E88B),
          title: "Search",
        ),
      ),
    );
  }
}
