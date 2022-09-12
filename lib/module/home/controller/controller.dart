import 'package:get/get.dart';
import 'package:masmas_food_delivery/module/home/model/model.dart';

class ControllerBottomNavigetorBar extends GetxController {
  var isSelect = false.obs;
  var index = 0.obs;
  var selectedIndex = 0.obs;

  var listModel = <ModelBottom>[
    ModelBottom(svg: "assets/png/Home.png", title: "Home"),
    ModelBottom(svg: "assets/png/Profile.png", title: "Profile"),
    ModelBottom(svg: "assets/png/Buy.png", title: "Cart"),
    ModelBottom(svg: "assets/png/Chat.png", title: "Chart"),
  ];
}
