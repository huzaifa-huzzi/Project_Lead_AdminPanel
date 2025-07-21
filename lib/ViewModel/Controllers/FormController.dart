
import 'package:get/get.dart';

class FilterController extends GetxController {
  var numberType = ''.obs;
  var state = ''.obs;
  var city = ''.obs;
  var suburbs = ''.obs;
  var keywordCategory = ''.obs;
  var selectedFilter = 'Daily'.obs;

  List<String> filterOptions = ['Daily', 'Weekly', 'Monthly'];
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

  /// Paginations
  // Full list of form submissions (mocked for now)
  var allForms = <Map<String, String>>[].obs;

  // Data to show on the current page
  var paginatedForms = <Map<String, String>>[].obs;

  // Pagination state
  var currentPage = 1.obs;
  final int rowsPerPage = 20;

  // Total number of pages
  int get totalPages =>
      (allForms.length / rowsPerPage).ceil().clamp(1, double.infinity).toInt();

  // Set data (called from filter controller or mock)
  void setData(List<Map<String, String>> data) {
    allForms.value = data;
    currentPage.value = 1;
    _updatePaginatedForms();
  }

  // Go to next page
  void nextPage() {
    if (currentPage.value < totalPages) {
      currentPage.value++;
      _updatePaginatedForms();
    }
  }

  // Go to previous page
  void previousPage() {
    if (currentPage.value > 1) {
      currentPage.value--;
      _updatePaginatedForms();
    }
  }

  // Internal method to update visible forms
  void _updatePaginatedForms() {
    final start = (currentPage.value - 1) * rowsPerPage;
    final end = (start + rowsPerPage).clamp(0, allForms.length);
    paginatedForms.value = allForms.sublist(start, end);
  }


}
