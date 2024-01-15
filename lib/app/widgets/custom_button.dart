import 'package:flutter/material.dart';
import 'package:lens_new/core/theme/color_data.dart';

class CustomElevatedButton extends StatefulWidget {
  final bool disabled;
  final void Function()? onPressed;
  final Widget child;
  final MaterialColor? backgroundColor;
  final MaterialColor? foregroundColor;
  const CustomElevatedButton({
    super.key,
    this.disabled = false,
    required this.onPressed,
    required this.child,
    this.backgroundColor = ColorData.primary,
    this.foregroundColor = ColorData.baseWhite,
  });

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (!widget.disabled) ? widget.onPressed : () {},
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: widget.backgroundColor![200],
        shadowColor: (!widget.disabled) ? widget.backgroundColor![100] : ColorData.baseWhite,
        elevation: 0,
        backgroundColor: (!widget.disabled) ? widget.backgroundColor : widget.backgroundColor![200],
        foregroundColor: (!widget.disabled) ? widget.foregroundColor : widget.foregroundColor![200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: widget.child,
    );
  }
}

class CustomOutlineButton extends StatefulWidget {
  final bool disabled;
  final void Function()? onPressed;
  final MaterialColor? color;
  final MaterialColor? backgroundColor;
  final MaterialColor? borderColor;
  final Widget child;
  const CustomOutlineButton({
    super.key,
    this.disabled = false,
    required this.onPressed,
    this.color = ColorData.gray,
    this.backgroundColor = ColorData.gray,
    this.borderColor = ColorData.gray,
    required this.child,
  });

  @override
  State<CustomOutlineButton> createState() => _CustomOutlineButtonState();
}

class _CustomOutlineButtonState extends State<CustomOutlineButton> {
  int value = 500;
  @override
  Widget build(BuildContext context) {
    if (widget.disabled == true) {
      setState(() {
        value = 200;
      });
    }
    return OutlinedButton(
      onPressed: (!widget.disabled) ? widget.onPressed : () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: (!widget.disabled) ? widget.backgroundColor![100] : widget.backgroundColor!.withOpacity(0.0),
        foregroundColor: (!widget.disabled) ? widget.color : widget.borderColor![300],
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: widget.borderColor![300]!),
        ),
      ),
      child: widget.child,
    );
  }
}
