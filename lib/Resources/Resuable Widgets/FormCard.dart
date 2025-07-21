import 'package:flutter/material.dart';
import 'package:project_x_adminpanel/Resources/Resuable Widgets/Sizing of Screen.dart';
import 'package:project_x_adminpanel/Resources/Colors/Colors.dart';

class FormDataTable extends StatelessWidget {
  final List<Map<String, String>> formData;

  const FormDataTable({super.key, required this.formData});

  final headers = const [
    "Name", "Email", "Category", "Title", "Phone No",
    "Number Type", "Website", "Zip Code", "Suburb", "City", "State",
    "Address", "Country", "Actions"
  ];

  @override
  Widget build(BuildContext context) {
    SizingConfig.init(context);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header Row
            Container(
              color: Colors.grey.shade50,
              padding: EdgeInsets.symmetric(
                vertical: SizingConfig.height(0.018),
                horizontal: SizingConfig.width(0.015),
              ),
              child: Row(
                children: headers.map((heading) {
                  return Container(
                    width: heading == "Actions"
                        ? SizingConfig.width(0.10)
                        : SizingConfig.width(0.16),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      heading,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizingConfig.height(0.019),
                        color: Colors.black,
                        letterSpacing: 0.3,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }).toList(),
              ),
            ),


            /// Data Rows
            ...formData.map((data) => Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: SizingConfig.height(0.014),
                    horizontal: SizingConfig.width(0.015),
                  ),
                  child: Row(
                    children: [
                      _dataCell(data["Name"]),
                      _dataCell(data["Email"]),
                      _dataCell(data["Category"]),
                      _dataCell(data["Title"]),
                      _dataCell(data["Phone No"]),
                      _dataCell(data["Number Type"]),
                      _dataCell(data["Website"]),
                      _dataCell(data["Zip Code"]),
                      _dataCell(data["Suburb"]),
                      _dataCell(data["City"]),
                      _dataCell(data["State"]),
                      _dataCell(data["Address"]),
                      _dataCell(data["Country"]),
                      _actionCell(),
                    ],
                  ),
                ),
                Divider(height: 1, thickness: 0.8, color: Colors.grey.shade200),
              ],
            )),
          ],
        ),
      ),
    );
  }

  /// Standard Data Cell
  Widget _dataCell(String? value) {
    return Container(
      width: SizingConfig.width(0.16),
      padding: EdgeInsets.only(right: SizingConfig.width(0.01)),
      child: Text(
        value ?? '-',
        style: TextStyle(
          fontSize: SizingConfig.height(0.016),
          color: Colors.grey.shade800,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  /// Action Cell with Edit/Delete Icons
  Widget _actionCell() {
    return Container(
      width: SizingConfig.width(0.10),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          _actionIcon(Icons.edit, AppColors.primaryColor, () {}),
          _actionIcon(Icons.delete_outline, Colors.redAccent, () {}),
        ],
      ),
    );
  }

  Widget _actionIcon(IconData icon, Color color, VoidCallback onPressed) {
    return Padding(
      padding: EdgeInsets.only(right: SizingConfig.width(0.01)),
      child: IconButton(
        icon: Icon(icon, size:18, color: color),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
    );
  }
}
