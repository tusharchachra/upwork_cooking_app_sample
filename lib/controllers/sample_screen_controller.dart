import 'package:get/get.dart';

class SampleScreenController extends GetxController {
  List<String> options = [
    'Vegan',
    'Low Carb',
    'High',
    'Protein',
    'Low Fat',
    'Keto',
  ];
  RxString selectedOption = 'Vegan'.obs;
}
