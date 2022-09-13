import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masmas_food_delivery/module/home/controller/controller.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_bottomnavigertor.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_menu.dart';
import 'package:masmas_food_delivery/module/home/widget/custom_textformfile.dart';

class PopularMenuSceeen extends StatelessWidget {
  PopularMenuSceeen({Key? key}) : super(key: key);
  final _controller = Get.put(ControllerBottomNavigetorBar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
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
                Container(
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
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 276,
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
                  width: 20,
                ),
                Container(
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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: _controller.listMenu
                  .asMap()
                  .entries
                  .map((e) => CustomMenu(
                        model: e.value,
                      ))
                  .toList(),
            )
            // GridView.builder(
            //   padding: const EdgeInsets.only(top: 20),
            //   physics: const NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //     maxCrossAxisExtent: 200,
            //     childAspectRatio: 1 / 1.2,
            //     crossAxisSpacing: 20,
            //     mainAxisSpacing: 20,
            //   ),
            //   itemCount: _controller.listNearest.length,
            //   itemBuilder: ((context, index) {
            //     return LayoutBuilder(builder:
            //         (BuildContext context, BoxConstraints constraints) {
            //       return CustomNearest(
            //         model: _controller.listNearest[index],
            //         height: constraints.maxHeight,
            //         width: constraints.maxWidth,
            //       );
            //     });
            //   }),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 72,
        margin: const EdgeInsets.only(bottom: 40, left: 10, right: 10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(22),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 0,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.05),
            )
          ],
        ),
        child: Obx(
          () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _controller.listModel
                  .asMap()
                  .entries
                  .map(
                    (e) => CustomBottomNavigetorbar(
                      model: e.value,
                      index: _controller.index.value,
                      selectedIndex: e.key,
                      onTap: () {
                        _controller.index.value = e.key;
                      },
                    ),
                  )
                  .toList()),
        ),
      ),
    );
  }
}
