import 'package:flutter/material.dart';
import 'package:lens_new/core/extensions/common_lib.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/values/dimensions.dart';
import 'package:lens_new/core/values/enum.dart';

class CustomTextfield extends StatefulWidget {
  final bool autoFormat;
  final InputType type;
  final TextEditingController controller;
  final String label;
  final String hint;
  final Function(String)? onChanged;
  final bool isError;

  const CustomTextfield({
    super.key,
    required this.controller,
    this.autoFormat = false,
    required this.label,
    this.hint = '',
    this.type = InputType.base,
    this.isError = false,
    this.onChanged,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late FocusNode focusNode;
  @override
  void initState() {
    focusNode = FocusNode();
    focusNode.addListener(() {
      if (!focusNode.hasFocus) {
        if (widget.autoFormat) {
          widget.controller.text = CommonLib.formatInput(widget.controller.text, (widget.type == InputType.radius));
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: widget.controller,
      onChanged: widget.onChanged,
      onTap: () {},
      decoration: InputDecoration(
        labelText: widget.label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Container(
          alignment: Alignment.center,
          child: Text(
            '${widget.hint}',
            style: TextStyle(
              color: AppColors.icon,
            ),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(
          maxWidth: 40,
          maxHeight: 40,
          minWidth: 40,
          minHeight: 40,
        ),
        contentPadding: const EdgeInsets.only(
          left: 16,
          top: 8,
          bottom: 8,
          right: 0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: (widget.isError) ? AppColors.error : AppColors.border, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: (widget.isError) ? AppColors.error : AppColors.border, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
        ),
      ),
    );
  }
}
