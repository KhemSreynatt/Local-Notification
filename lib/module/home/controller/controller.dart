import 'package:get/get.dart';
import 'package:masmas_food_delivery/module/home/model/model.dart';
import 'package:masmas_food_delivery/module/home/model/model_menu.dart';
import 'package:masmas_food_delivery/module/home/model/model_res.dart';

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

  var listNearest = <ModelNearest>[
    ModelNearest(
      image: "assets/png/Resturant_Image.1png.png",
      title: "Vegan Resto",
      mins: "12 Mins",
    ),
    ModelNearest(
      image: "assets/png/Restaurant.png",
      title: "Healthy Food",
      mins: "8 Mins",
    ),
    ModelNearest(
      image: "assets/png/Restaurant1.png",
      title: "Good Food",
      mins: "12 Mins",
    ),
    ModelNearest(
      image: "assets/png/Restaurant2.png",
      title: "Smart Resto",
      mins: "8 Mins",
    ),
    ModelNearest(
      image: "assets/png/Resturant_Image.1png.png",
      title: "Vegan Resto",
      mins: "12 Mins",
    ),
    ModelNearest(
        image: "assets/png/Restaurant.png",
        title: "Healthy Food",
        mins: "8 Mins"),
  ];
  var listMenu = <ModelMenu>[
    ModelMenu(
      image: "assets/png/Photo_Menu.png",
      title: "Green Noddle",
      sub: "Noodle Home",
      price: 5,
    ),
    ModelMenu(
      image: "assets/png/Photo_1Menu.png",
      title: "Fruit Salad",
      sub: "Warung Herbal",
      price: 9,
    ),
    ModelMenu(
      image: "assets/png/Menu.png",
      title: "Herbal Pancake",
      sub: "Noodle Home",
      price: 5,
    ),
    ModelMenu(
      image: "assets/png/Photo_Menu.png",
      title: "Green Noddle",
      sub: "Noodle Home",
      price: 5,
    ),
  ];
}
