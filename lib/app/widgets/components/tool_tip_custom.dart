import 'package:flutter/material.dart';
import 'package:lens_new/core/theme/color_data.dart';

class ToolTipCustom extends StatefulWidget {
  final String? message;
  final InlineSpan? richMessage;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? verticalOffset;
  final bool? preferBelow;
  final bool? excludeFromSemantics;
  final Widget? child;
  final Decoration? decoration;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final Duration? waitDuration;
  final Duration? showDuration;
  final TooltipTriggerMode? triggerMode;
  final bool? enableFeedback;
  final TooltipTriggeredCallback? onTriggered;

  const ToolTipCustom({
    super.key,
    required this.message,
    this.richMessage,
    this.height,
    this.padding,
    this.margin,
    this.verticalOffset,
    this.preferBelow,
    this.excludeFromSemantics,
    this.decoration,
    this.textStyle,
    this.textAlign,
    this.waitDuration,
    this.showDuration,
    this.triggerMode = TooltipTriggerMode.tap,
    this.enableFeedback,
    this.onTriggered,
    required this.child,
  });

  @override
  State<ToolTipCustom> createState() => _ToolTipCustomState();
}

class _ToolTipCustomState extends State<ToolTipCustom> {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.message,
      triggerMode: widget.triggerMode,
      decoration: widget.decoration ??
          BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorData.gray[900],
          ),
      padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      textStyle: widget.textStyle ??
          const TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
      showDuration: widget.showDuration,
      waitDuration: widget.waitDuration,
      child: widget.child,
      richMessage: widget.richMessage,
      height: widget.height,
      margin: widget.margin,
      verticalOffset: widget.verticalOffset,
      preferBelow: widget.preferBelow,
      excludeFromSemantics: widget.excludeFromSemantics,
      textAlign: widget.textAlign,
      enableFeedback: widget.enableFeedback,
      onTriggered: widget.onTriggered,
    );
  }
}
