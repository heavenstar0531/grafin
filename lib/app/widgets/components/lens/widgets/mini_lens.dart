import 'package:flutter/material.dart';
import 'package:lens_new/app/widgets/components/lens/controller/lens_controller.dart';
import 'package:lens_new/app/widgets/components/lens/lens_component.dart';
import 'package:lens_new/app/widgets/components/lens/widgets/lens_rotator.dart';
import 'package:lens_new/app/widgets/components/lens/widgets/lens_shape.dart';
import 'package:lens_new/core/extensions/common_lib.dart';

class MiniLens extends StatefulWidget {
  final TextEditingController? textController;
  final LensController controller;
  final LensComponentSize size;
  final String label;

  const MiniLens({
    Key? key,
    required this.controller,
    this.textController,
    required this.size,
    this.label = '',
  }) : super(key: key);

  @override
  State<MiniLens> createState() => _MiniLensState();
}

class _MiniLensState extends State<MiniLens> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (widget.size == LensComponentSize.normal) ? CommonLib.miniLensSize : CommonLib.lensSize,
      width: (widget.size == LensComponentSize.normal) ? CommonLib.miniLensSize : CommonLib.lensSize,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            onPanUpdate: (dragDetails) {
              print(dragDetails);
              widget.controller.onPanUpdateHandler(
                details: dragDetails,
                constraints: constraints,
                textController: widget.textController,
              );
            },
            onPanStart: (dragDetails) {
              widget.controller.onPanStartHandler(
                details: dragDetails,
                constraints: constraints,
              );
            },
            child: Stack(
              children: [
                // circle outer , text - text inside circle
                LensShape(
                  text: widget.label,
                  lensSize: (widget.size == LensComponentSize.normal) ? CommonLib.miniLensSize : CommonLib.lensSize,
                ),

                AnimatedBuilder(
                  animation: widget.controller.animation,
                  child: Stack(
                    children: [
                      LensRotator(
                        alignment: Alignment.centerLeft,
                        lensSize: (widget.size == LensComponentSize.normal) ? CommonLib.miniLensSize : CommonLib.lensSize,
                      ),
                      LensRotator(
                        alignment: Alignment.bottomCenter,
                        isVerticalLine: true,
                        lensSize: (widget.size == LensComponentSize.normal) ? CommonLib.miniLensSize : CommonLib.lensSize,
                      ),
                      LensRotator(
                        alignment: Alignment.centerRight,
                        lensSize: (widget.size == LensComponentSize.normal) ? CommonLib.miniLensSize : CommonLib.lensSize,
                      ),
                    ],
                  ),
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: widget.controller.animation.value,
                      child: child,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
