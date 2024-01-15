import 'package:flutter/material.dart';
import 'package:lens_new/core/theme/app_colors.dart';
import 'package:lens_new/core/theme/color_data.dart';
import 'package:lens_new/core/values/dimensions.dart';

class ButtomGroupItem<T> {
  Widget widget;
  T value;
  void Function()? onTap;

  ButtomGroupItem({
    required this.widget,
    required this.value,
    this.onTap,
  });
}

class ButtonGroup<T> extends StatefulWidget {
  final T? selectedValue;
  final List<ButtomGroupItem<T>> items;
  const ButtonGroup({
    super.key,
    required this.items,
    this.selectedValue,
  });

  @override
  State<ButtonGroup> createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
        border: Border.all(color: AppColors.border, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
        child: Row(
          children: List.generate(
            widget.items.length,
            (index) {
              return InkWell(
                onTap: widget.items[index].onTap,
                borderRadius: BorderRadius.circular(Dimensions.RADIUS_DEFAULT),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40,
                      color: (widget.items[index].value == widget.selectedValue) ? ColorData.gray[200] : Colors.transparent,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.center,
                      child: widget.items[index].widget,
                    ),
                    Visibility(
                      visible: (index != widget.items.length - 1),
                      child: VerticalDivider(
                        color: AppColors.border,
                        thickness: 1,
                        width: 1,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
