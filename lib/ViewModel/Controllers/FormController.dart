
import 'package:get/get.dart';

class FilterController extends GetxController {
  var numberType = ''.obs;
  var state = ''.obs;
  var city = ''.obs;
  var suburbs = ''.obs;
  var keywordCategory = ''.obs;
  List<String> keywordCategories = [
    'Hospitality',
    'Construction'
  ];

  List<String> numberTypes = ['Personal', 'Business'];
  List<String> states = [
    'New South Wales',
    'Victoria',
    'Queensland',
    'South Australia'
  ];
  List<String> cities = ['Lahore', 'Karachi', 'Peshawar'];

  void clearFilters() {
    keywordCategory.value = '';
    numberType.value = '';
    state.value = '';
    city.value = '';
  }
}
