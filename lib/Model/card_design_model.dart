import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:e_share/Controller/my_visiting_card_controller/visiting_card.dart';
import 'package:e_share/View/components/main_components/my_card_details_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../View/my_detail_page.dart';

class CardDesignModel {
  final MyVistingCardController _cardController =
      Get.put(MyVistingCardController());

  onTap(int cardNumber, BuildContext context) {
    _cardController.changeCardNumber(cardNumber);
    _cardController.changeSwiperList();
    final snackBar = SnackBar(
      duration: Duration(
        seconds: 2,
      ),
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Congratulation!',
        message: 'Card design changed successfully.',
        contentType: ContentType.success,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);

    Get.back();
  }
}
