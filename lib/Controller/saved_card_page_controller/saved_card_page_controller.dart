import 'package:get/get.dart';

import '../../Model/saved_card_page_model/saved_card_list.dart';

class SavedCardPageController extends GetxController {
  final allSavedCardList = [
    SavedCardList(
      name: 'Risab Tajale',
    ),
    SavedCardList(
      name: 'Aashma Rai',
    ),
    SavedCardList(
      name: 'Sirish Kodna',
    ),
    SavedCardList(
      name: 'Anish Koju',
    ),
    SavedCardList(
      name: 'Rohan Awal',
    ),
  ].obs;

  Rx<List> foundSavedCard = Rx<List>([]);

  @override
  void onInit() {
    super.onInit();
    foundSavedCard.value = allSavedCardList;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void filterSavedCard(String cardName) {
    List results = [];
    if (cardName.isEmpty) {
      results = allSavedCardList;
    } else {
      results = allSavedCardList
          .where((element) => element.name
              .toString()
              .toLowerCase()
              .contains(cardName.toLowerCase()))
          .toList();
    }
    foundSavedCard.value = results;
  }
}
