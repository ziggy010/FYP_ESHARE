import 'package:get/get.dart';

class CardDesignController extends GetxController {
  //setting observable variable using getx.
  var pageNumber = 0.obs;

  //method to change page number
  changePageNumber(int newNumber) {
    pageNumber.value = newNumber;
  }
}
