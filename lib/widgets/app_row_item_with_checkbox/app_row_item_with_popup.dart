import 'package:aura/const/app_colors.dart';
import 'package:aura/utils/applog/app_size.dart';
import 'package:aura/widgets/text/app_text.dart';
import 'package:flutter/material.dart';

class RowItemWithDividerWithHeightSelector extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final String? selectedValue;
  final ValueChanged<String>? onValueChanged;
  final List<String> heightOptions;

  const RowItemWithDividerWithHeightSelector({
    super.key,
    this.onTap,
    this.text,
    this.selectedValue,
    this.onValueChanged,
    this.heightOptions = const [],
  });

  void _showHeightPickerDialog(BuildContext context) {
    // Debug print to check if dialog is called
    print("Opening height picker dialog");
    print("Height options length: ${heightOptions.length}");
    print("Current selected value: $selectedValue");
    print("onValueChanged is null: ${onValueChanged == null}");

    // Check if AppSize is initialized
    if (AppSize.size == Size.zero) {
      print("Warning: AppSize.size is not initialized, using MediaQuery");
    }

    showDialog(
      context: context,
      barrierDismissible: true, // Allow dismissing by tapping outside
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.instance.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: AppColors.instance.white, width: 1),
          ),
          child: Container(
            padding: EdgeInsets.all(
              AppSize.size != Size.zero ? AppSize.width(value: 20) : 20,
            ),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.6,
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      data: "Select Height",
                      fontSize: AppSize.size != Size.zero
                          ? AppSize.width(value: 24)
                          : 24,
                      color: AppColors.instance.white,
                      fontWeight: FontWeight.bold,
                    ),
                    IconButton(
                      onPressed: () {
                        print("Close button pressed");
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        color: AppColors.instance.white,
                        size: AppSize.size != Size.zero
                            ? AppSize.width(value: 24)
                            : 24,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppSize.size != Size.zero
                      ? AppSize.width(value: 20)
                      : 20,
                ),

                // Height Options List
                Expanded(
                  child: heightOptions.isEmpty
                      ? Center(
                          child: AppText(
                            data: "No height options available",
                            fontSize: AppSize.size != Size.zero
                                ? AppSize.width(value: 18)
                                : 18,
                            color: AppColors.instance.white.withValues(
                              alpha: .7,
                            ),
                          ),
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          itemCount: heightOptions.length,
                          separatorBuilder: (context, index) => SizedBox(
                            height: AppSize.size != Size.zero
                                ? AppSize.width(value: 4)
                                : 4,
                          ),
                          itemBuilder: (context, index) {
                            final height = heightOptions[index];
                            final isSelected = selectedValue == height;

                            return Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(8),
                                onTap: () {
                                  print("Height selected: $height");
                                  print("Calling onValueChanged with: $height");
                                  if (onValueChanged != null) {
                                    onValueChanged!(height);
                                    print("onValueChanged called successfully");
                                  } else {
                                    print(
                                      "onValueChanged is null! Cannot update value",
                                    );
                                  }
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: AppSize.size != Size.zero
                                        ? AppSize.width(value: 16)
                                        : 16,
                                    horizontal: AppSize.size != Size.zero
                                        ? AppSize.width(value: 12)
                                        : 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? AppColors.instance.blue.withValues(
                                            alpha: 0.2,
                                          )
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: isSelected
                                          ? AppColors.instance.blue
                                          : AppColors.instance.white
                                                .withOpacity(0.3),
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppText(
                                        data: height,
                                        fontSize: AppSize.size != Size.zero
                                            ? AppSize.width(value: 20)
                                            : 20,
                                        color: isSelected
                                            ? AppColors.instance.blue
                                            : AppColors.instance.white,
                                      ),
                                      if (isSelected)
                                        Icon(
                                          Icons.check_circle,
                                          color: AppColors.instance.blue,
                                          size: AppSize.size != Size.zero
                                              ? AppSize.width(value: 20)
                                              : 20,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Debug print to show widget parameters
    print("Building RowItemWithDividerWithHeightSelector");
    print("Text: $text");
    print("Selected value: $selectedValue");
    print("Height options count: ${heightOptions.length}");
    print("onValueChanged is null: ${onValueChanged == null}");

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          print("Main widget tapped");
          // Always show height picker dialog when tapped
          _showHeightPickerDialog(context);
        },
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppSize.size != Size.zero
                    ? AppSize.width(value: 16)
                    : 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AppText(
                      data: text ?? "No Text",
                      fontSize: AppSize.size != Size.zero
                          ? AppSize.width(value: 20)
                          : 22,
                      color: AppColors.instance.white,
                    ),
                  ),

                  // Height Selector Button
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.size != Size.zero
                          ? AppSize.width(value: 12)
                          : 12,
                      vertical: AppSize.size != Size.zero
                          ? AppSize.width(value: 8)
                          : 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.instance.white.withValues(alpha: .5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppText(
                          data: selectedValue ?? "Select",
                          fontSize: AppSize.size != Size.zero
                              ? AppSize.width(value: 18)
                              : 18,
                          color: selectedValue != null
                              ? AppColors.instance.blue
                              : AppColors.instance.white.withValues(alpha: .7),
                        ),
                        SizedBox(
                          width: AppSize.size != Size.zero
                              ? AppSize.width(value: 8)
                              : 8,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.instance.white.withValues(alpha: .7),
                          size: AppSize.size != Size.zero
                              ? AppSize.width(value: 20)
                              : 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 2, color: AppColors.instance.white),
          ],
        ),
      ),
    );
  }
}

//
