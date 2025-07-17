import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Resources/Colors/Colors.dart';
import '../../Resources/Resuable Widgets/FormCard.dart';
import '../../Resources/Resuable Widgets/Sizing of Screen.dart';
import '../../ViewModel/Controllers/FormController.dart';

class FormScreen extends StatelessWidget {
  FormScreen({super.key});
  final FilterController controller = Get.put(FilterController());


  @override
  Widget build(BuildContext context) {
    SizingConfig.init(context);

    return Scaffold(
      backgroundColor: AppColors.screenColors,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: SizingConfig.width(0.06),
          vertical: SizingConfig.height(0.04),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forms Received",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: SizingConfig.height(0.1)),
            Text(
              "Search",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: SizingConfig.height(0.03)),
            _buildResponsiveFilters(),
            SizedBox(height: SizingConfig.height(0.1)),
            Text(
              "Forms Submitted",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: SizingConfig.height(0.03)),
            Center(
              child: Obx(() {
                return SizedBox(
                  width: 200,
                  child: DropdownButtonFormField<String>(
                    value: controller.selectedFilter.value,
                    items: controller.filterOptions.map((filter) {
                      return DropdownMenuItem(
                        value: filter,
                        child: Text(filter),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    onChanged: (value) {
                      controller.selectedFilter.value = value!;
                    },
                  ),
                );
              }),
            ),
            SizedBox(height: SizingConfig.height(0.025)),
            FormDataCard(
                keywordCategory: 'hospitaity',
                keywordTitle: 'Fuel',
                name: 'Ali',
                email: 'Ali@example',
                phoneNumber: '+92333',
                numberType: 'Personal',
                website: 'https://githuc.vom',
                zipCode: '48010',
                suburb: 'haucs',
                city: 'Melbourne',
                state: 'Queensland',
                address: 'abcakckbdddd',
                country: 'Australia'),
            FormDataCard(
                keywordCategory: 'hospitaity',
                keywordTitle: 'Fuel',
                name: 'Ali',
                email: 'Ali@example',
                phoneNumber: '+92333',
                numberType: 'Personal',
                website: 'https://githuc.vom',
                zipCode: '48010',
                suburb: 'haucs',
                city: 'Melbourne',
                state: 'Queensland',
                address: 'abcakckbdddd',
                country: 'Australia'),
            FormDataCard(
                keywordCategory: 'hospitaity',
                keywordTitle: 'Fuel',
                name: 'Ali',
                email: 'Ali@example',
                phoneNumber: '+92333',
                numberType: 'Personal',
                website: 'https://githuc.vom',
                zipCode: '48010',
                suburb: 'haucs',
                city: 'Melbourne',
                state: 'Queensland',
                address: 'abcakckbdddd',
                country: 'Australia'),
            FormDataCard(
                keywordCategory: 'hospitaity',
                keywordTitle: 'Fuel',
                name: 'Ali',
                email: 'Ali@example',
                phoneNumber: '+92333',
                numberType: 'Personal',
                website: 'https://githuc.vom',
                zipCode: '48010',
                suburb: 'haucs',
                city: 'Melbourne',
                state: 'Queensland',
                address: 'abcakckbdddd',
                country: 'Australia'),
          ],
        ),
      ),
    );
  }



  Widget _buildResponsiveFilters() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildFieldWrapper(_buildDropdownField("Select Category", controller.keywordCategory, controller.keywordCategories)),
            _buildVerticalDivider(),
            _buildFieldWrapper(_buildTextField("Suburb")),
            _buildVerticalDivider(),
            _buildFieldWrapper(_buildDropdownField("State", controller.state, controller.states)),
            _buildVerticalDivider(),
            _buildFieldWrapper(_buildDropdownField("City", controller.city, controller.cities)),
            _buildVerticalDivider(),
            _buildFieldWrapper(_buildDropdownField("Number Type", controller.numberType, controller.numberTypes)),
            _buildSearchButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildFieldWrapper(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(width: 180, height: 48, child: child),
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      height: 30,
      width: 1,
      color: AppColors.borderColor.withOpacity(0.5),
    );
  }

  Widget _buildTextField(String hint) {
    return Obx(() {
      return TextFormField(
        onChanged: (value) => controller.suburbs.value = value,
        initialValue: controller.suburbs.value,
        style: TextStyle(fontSize: 13, color: AppColors.textColor),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontSize: 13, color: AppColors.textColor),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
          filled: true,
          fillColor: Colors.transparent,
        ),
      );
    });
  }

  Widget _buildDropdownField(String hint, RxString selectedValue, List<String> options) {
    return Obx(() {
      return DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedValue.value.isEmpty ? null : selectedValue.value,
          hint: Text(hint, style: TextStyle(fontSize: 13, color: AppColors.textColor)),
          icon: const Icon(Icons.keyboard_arrow_down_rounded, size: 20),
          items: options.map((option) {
            return DropdownMenuItem(
              value: option,
              child: Text(option, style: const TextStyle(fontSize: 13)),
            );
          }).toList(),
          onChanged: (value) => selectedValue.value = value ?? '',
        ),
      );
    });
  }

  Widget _buildSearchButton() {
    return SizedBox(
      height: 48,
      width: 48,
      child: ElevatedButton(
        onPressed: () {
          print("Select Category: ${controller.keywordCategory.value}");
          print("Suburb: ${controller.suburbs.value}");
          print("State: ${controller.state.value}");
          print("City: ${controller.city.value}");
          print("Number Type: ${controller.numberType.value}");
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          padding: EdgeInsets.zero,
        ),
        child: const Icon(Icons.search, size: 20, color: Colors.white),
      ),
    );
  }
}
