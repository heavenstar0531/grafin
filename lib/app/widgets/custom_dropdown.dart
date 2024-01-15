import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:lens_new/app/widgets/shadow_input_border.dart';
import 'package:lens_new/core/theme/app_shadow.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/theme/app_colors.dart';

class CustomDropdown<T> extends StatefulWidget {
  final T? value;
  final Color buttonColor;
  final Function(T?)? onChanged;
  final double? buttonHeight;
  final double? buttonWidth;
  final List<DropdownMenuItem<T>>? items;
  final Widget? hint;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry itemPadding;
  final List<Widget> Function(BuildContext)? selectedItemBuilder;
  final Color? selectedItemHighlightColor;
  const CustomDropdown({
    super.key,
    required this.onChanged,
    required this.items,
    this.buttonColor = Colors.white,
    this.value,
    this.hint,
    this.buttonHeight = 42,
    this.buttonWidth = 200,
    this.padding = EdgeInsets.zero,
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.selectedItemBuilder,
    this.selectedItemHighlightColor,
    this.margin = const EdgeInsets.only(bottom: 4),
  });

  @override
  State<CustomDropdown<T>> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      width: widget.buttonWidth,
      child: DropdownButtonFormField2<T>(
        selectedItemHighlightColor: widget.selectedItemHighlightColor,
        itemPadding: widget.itemPadding,
        dropdownElevation: 0,
        buttonElevation: 0,
        value: widget.value,
        onChanged: widget.onChanged,
        iconSize: 24,
        buttonHeight: widget.buttonHeight,
        focusColor: Colors.transparent,
        hint: widget.hint,
        icon: const Icon(Icons.arrow_drop_down),
        isExpanded: true,
        selectedItemBuilder: widget.selectedItemBuilder,
        buttonPadding: const EdgeInsets.only(left: 4, right: 8, bottom: 4),
        buttonDecoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
          border: Border.all(color: AppColors.border, width: 1),
          boxShadow: AppShadow.shadowXs,
        ),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
          boxShadow: AppShadow.shadowLg,
          color: Colors.white,
          border: Border.all(color: AppColors.border, width: 1),
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
        items: widget.items,
      ),
    );
  }
}
