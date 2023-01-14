import 'package:get/get.dart';

class CardDesignController extends GetxController {
  var pageNumber = 0.obs;

  changePageNumber(int newNumber) {
    pageNumber.value = newNumber;
  }
}
