import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lens_new/core/extensions/common_lib.dart';

class LensController extends GetxController with GetTickerProviderStateMixin {
  clear() {
    currentAngle = 0;
    offsetAngle = 0.0;
    isAnimationEnabled.value = true;
    rotator.value = 0;
    modelRotator.value = 0;
    previousRotator.value = 0;
    modelPreviousRotator.value = 0;
  }

  late Animation<double> animation;
  int defaultDuration = CommonLib.animationDuration;
  double currentAngle = 0;
  double offsetAngle = 0.0;
  // lens rotation animation enabled for text input
  RxBool isAnimationEnabled = true.obs;

  // current right and left rotator
  RxInt rotator = 0.obs;
  RxInt modelRotator = 0.obs;

  // previous right and left rotator
  RxInt previousRotator = 0.obs;
  RxInt modelPreviousRotator = 0.obs;

  // lens rotation animation controller
  late AnimationController animationController;

  setRotation() {
    // calculating degree for lens
    final currentDegree = CommonLib.requiredDegree(rotator.value);
    currentAngle = CommonLib.degreeToRadiant(currentDegree);

    final previousDegree = CommonLib.requiredDegree(previousRotator.value);
    final previousAngle = CommonLib.degreeToRadiant(previousDegree);

    animation = Tween<double>(begin: previousAngle, end: currentAngle).animate(
      animationController,
    );

    // setting new duration
    final degree = (previousDegree - currentDegree).abs();
    final durationPerDegree = (degree == 0 ? 0 : defaultDuration / 180).toInt();
    final newDuration = Duration(milliseconds: (durationPerDegree * degree).toInt());
    animationController.duration = newDuration;

    // rotate lens
    animationController.forward(from: 0.0);
  }

  void onPanUpdateHandler({
    required DragUpdateDetails details,
    required BoxConstraints constraints,
    TextEditingController? textController,
  }) {
    Offset centerOfGestureDetector = Offset(constraints.maxWidth / 2, constraints.maxHeight / 2);
    final touchPositionFromCenter = details.localPosition - centerOfGestureDetector;
    final calculatedAngle = touchPositionFromCenter.direction - offsetAngle;
    int currentDegree = CommonLib.radiantToDegree(calculatedAngle);
    // format degree
    if (currentDegree > 180) {
      currentDegree -= 360;
    }
    if ((currentDegree <= 90) && (currentDegree >= 0) || (currentDegree <= 0 && currentDegree >= -90)) {
      // rotate lens between 0 to 180
      currentAngle = calculatedAngle;
    }

    isAnimationEnabled.value = false;

    // updating current rotation to controller
    modelPreviousRotator.value = modelRotator.value;
    modelRotator.value = CommonLib.requireDegreeForRotation(CommonLib.radiantToDegree(currentAngle));

    // updating text of rotation text field
    if (textController != null) {
      textController.text = modelRotator.value.toString();
      saveRotation(textController.text);
      setRotation();
    }
  }

  void onPanStartHandler({
    required DragStartDetails details,
    required BoxConstraints constraints,
  }) {
    Offset centerOfGestureDetector = Offset(constraints.maxWidth / 2, constraints.maxHeight / 2);
    final touchPositionFromCenter = details.localPosition - centerOfGestureDetector;
    offsetAngle = touchPositionFromCenter.direction - currentAngle;
  }

  init() {
    // initializing animation controllers
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: defaultDuration),
    );
    setRotation();
    // // init default rotation value
    // rotationController = TextEditingController();
    // rotationController.text = CommonLib.defaultRotation;
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void saveRotation(String value) {
    previousRotator.value = rotator.value;
    rotator.value = int.tryParse(value) ?? 0;
  }
}
