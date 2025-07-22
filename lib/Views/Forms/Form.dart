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
            SizedBox(height: SizingConfig.height(0.09)),
            FormDataTable(
              formData: [
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
                {
                  "Name" : "Huzaifa",
                  "Email" : "huzaifa@gmail.com",
                  "Category": "Construction",
                  "Title": "Builder",
                  "Phone No": "03331234567",
                  "Number Type": "Business",
                  "Website": "abc.com",
                  "Zip Code": "54000",
                  "Suburb": "Model Town",
                  "City": "Lahore",
                  "State": "Punjab",
                  "Address": "street no 2,kiddcs",
                  "Country": "Pakistan",

                },
              ],

            ),
          ],
        ),
      ),
    );
  }



  Widget _buildResponsiveFilters() {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth.clamp(600, 1000);
        double spacing = 12;
        double fieldWidth = (maxWidth - (10 * spacing)) / 6;

        return Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  color: Colors.black.withOpacity(0.05),
                ),
              ],
            ),
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Wrap(
              spacing: spacing,
              runSpacing: spacing,
              alignment: WrapAlignment.start,
              children: [
                _buildSizedField(
                  _buildDropdownField("Category", controller.keywordCategory, controller.keywordCategories),
                  fieldWidth,
                ),

                _buildSizedField(
                  _buildTextField("Suburb"),
                  fieldWidth,
                ),
                _buildSizedField(
                  _buildDropdownField("State", controller.state, controller.states),
                  fieldWidth,
                ),
                _buildSizedField(
                  _buildDropdownField("City", controller.city, controller.cities),
                  fieldWidth,
                ),
                _buildSizedField(
                  _buildDropdownField("No Type", controller.numberType, controller.numberTypes),
                  fieldWidth,
                ),
                SizedBox(
                  width: fieldWidth,
                  height: 48,
                  child: _buildSearchButton(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSizedField(Widget child, double width) {
    return SizedBox(
      width: width,
      height: 48,
      child: child,
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
      height: 30,
      width: 30,
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
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.zero,
        ),
        child: const Icon(Icons.search, size: 20, color: Colors.white),
      ),
    );
  }
}