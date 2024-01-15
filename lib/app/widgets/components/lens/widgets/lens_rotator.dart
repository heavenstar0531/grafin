import 'package:flutter/material.dart';
import 'package:lens_new/app/widgets/components/lens/widgets/custom_line.dart';
import 'package:lens_new/core/extensions/common_lib.dart';

class LensRotator extends StatelessWidget {
  const LensRotator({
    Key? key,
    required this.alignment,
    required this.lensSize,
    this.isVerticalLine = false,
  }) : super(key: key);

  final Alignment alignment;
  final bool isVerticalLine;
  final double lensSize;

  @override
  Widget build(BuildContext context) {
    final bool isMiniLens = lensSize == CommonLib.miniLensSize;
    return SizedBox(
      width: lensSize,
      height: lensSize,
      child: Align(
        alignment: alignment,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: CustomPaint(
            size: Size(isMiniLens ? 4 : 20, isMiniLens ? 2 : 10),
            painter: CustomLine(
              isVertical: isVerticalLine,
              isMiniLens: isMiniLens,
            ),
          ),
        ),
      ),
    );
  }
}
