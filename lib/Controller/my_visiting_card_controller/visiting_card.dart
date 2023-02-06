import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class MyVistingCardController extends GetxController {
  RxInt cardNumber = 1.obs;

  changeCardNumber(int number) {
    cardNumber.value = number;
  }
}
