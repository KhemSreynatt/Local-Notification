import 'package:get/get.dart';

import '../../../widgets/custom_card.dart';

class OrderController extends GetxController {
  List<CardModel> cardList = [
    CardModel(
      title: 'Spacy Fresh Crab',
      subTitle: 'Worka holy',
      image: 'assets/png/Menu Photo.png',
      amount: "\$34.00",
    ),
    CardModel(
      title: 'Spacy Fresh Crab',
      subTitle: 'Worka holy',
      image: 'assets/png/Menu Photo (2).png',
      amount: "\$35.00",
    ),
    CardModel(
      title: 'Spacy Fresh Crab',
      subTitle: 'Worka holy',
      image: 'assets/png/Menu Photo (1).png',
      amount: "\$35.00",
    ),
  ].obs;
}
