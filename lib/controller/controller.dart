import 'package:get/get.dart';

class MyController extends GetxController {
  final count = 0.obs;
  increment() => count.value++;
  decrement() {
    if (count > 0) {
      count.value--;
    }
  }
}
