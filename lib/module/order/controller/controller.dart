import 'package:get/get.dart';

import '../../../widgets/custom_card.dart';

class OrderController extends GetxController {
  var isClick = 0.obs;
  var isProcess = true;

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

  List<PaymentModel> paymentList = [
    PaymentModel(
      title: 'Payment Method',
      number: '2121 6352 8465 ****',
      svg: 'assets/svg/paypal Logo.svg',
    ),
    PaymentModel(
      title: 'Payment Method',
      number: '2121 6352 8465 ****',
      svg: 'assets/svg/visa logo.svg',
    ),
    PaymentModel(
      title: 'Payment Method',
      number: '2121 6352 8465 ****',
      svg: 'assets/svg/Payoneer logo.svg',
    ),
  ].obs;
}
