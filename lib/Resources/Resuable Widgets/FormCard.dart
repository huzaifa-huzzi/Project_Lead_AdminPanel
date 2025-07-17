import 'package:flutter/material.dart';
import 'package:project_x_adminpanel/Resources/Colors/Colors.dart';

class FormDataCard extends StatefulWidget {
  final String keywordCategory;
  final String keywordTitle;
  final String name;
  final String email;
  final String phoneNumber;
  final String numberType;
  final String website;
  final String zipCode;
  final String suburb;
  final String city;
  final String state;
  final String address;
  final String country;

  const FormDataCard({
    super.key,
    required this.keywordCategory,
    required this.keywordTitle,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.numberType,
    required this.website,
    required this.zipCode,
    required this.suburb,
    required this.city,
    required this.state,
    required this.address,
    required this.country,
  });

  @override
  State<FormDataCard> createState() => _FormDataCardState();
}

class _FormDataCardState extends State<FormDataCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryColor,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///  visible header section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildItem("Name", widget.name),
                        _buildItem("Email", widget.email),
                      ],
                    ),
                  ),
                  Icon(
                    _isExpanded ? Icons.expand_less : Icons.expand_more,
                    color:  AppColors.surfaceColor
                  ),
                ],
              ),
              /// Expanded section with all details
              if (_isExpanded)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildItem("Phone Number", widget.phoneNumber),
                    _buildItem("Number Type", widget.numberType),
                    _buildItem("Website", widget.website),
                    _buildItem("Zip Code", widget.zipCode),
                    _buildItem("Suburb", widget.suburb),
                    _buildItem("City", widget.city),
                    _buildItem("State", widget.state),
                    _buildItem("Address", widget.address),
                    _buildItem("Country", widget.country),
                    _buildItem("Keyword Category", widget.keywordCategory),
                    _buildItem("Keyword Title", widget.keywordTitle),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: AppColors.surfaceColor, fontSize: 14),
          children: [
            TextSpan(
              text: "$label: ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
