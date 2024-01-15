import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:lens_new/app/data/databases/collections/material_collection/material_collection.dart';
import 'package:lens_new/app/data/databases/collections/material_distributor_collection/material_distributor_collection.dart';
import 'package:lens_new/app/data/databases/storages/settings_storage/settings_storage.dart';
import 'package:lens_new/app/data/models/error_model.dart';
import 'package:lens_new/app/widgets/components/lens/controller/lens_controller.dart';
import 'package:lens_new/calculations/helper/materials.dart';
import 'package:lens_new/calculations/models/lens_material.dart';
import 'package:lens_new/calculations/models/rgp_lens_input.dart';
import 'package:lens_new/calculations/models/rgp_lens_output.dart';
import 'package:lens_new/calculations/rgplens.dart';
import 'package:lens_new/core/extensions/common_lib.dart';
import 'package:lens_new/core/values/enum.dart';
import 'package:lens_new/core/values/error_messages.dart';
import 'package:lens_new/core/values/strings.dart';
import 'package:lens_new/main_controller.dart';

class RgpLensCalculationController extends GetxController {
  var mainController = Get.find<MainController>();
  // error variable | initial lens
  // right
  RxBool isContactLensRightSphereError = RxBool(false);
  RxBool isContactLensRightCylinderError = RxBool(false);
  RxBool isContactLensRightAxisError = RxBool(false);
  RxBool isContactLensRightRadiusOneError = RxBool(false);
  RxBool isContactLensRightRadiusTwoError = RxBool(false);
  // left
  RxBool isContactLensLeftSphereError = RxBool(false);
  RxBool isContactLensLeftCylinderError = RxBool(false);
  RxBool isContactLensLeftAxisError = RxBool(false);
  RxBool isContactLensLeftRadiusOneError = RxBool(false);
  RxBool isContactLensLeftRadiusTwoError = RxBool(false);
  // new lens
  // error variable | right
  RxBool isNewContactLensRightSphereError = RxBool(false);
  RxBool isNewContactLensRightCylinderError = RxBool(false);
  RxBool isNewContactLensRightAxisError = RxBool(false);
  RxBool isNewContactLensRightRadiusOneError = RxBool(false);
  RxBool isNewContactLensRightRadiusTwoError = RxBool(false);
  // left
  RxBool isNewContactLensLeftSphereError = RxBool(false);
  RxBool isNewContactLensLeftCylinderError = RxBool(false);
  RxBool isNewContactLensLeftAxisError = RxBool(false);
  RxBool isNewContactLensLeftRadiusOneError = RxBool(false);
  RxBool isNewContactLensLeftRadiusTwoError = RxBool(false);

  // list error
  RxList<ErrorModel> listError = RxList.empty();
  pushError(ErrorModel errorModel) {
    listError.add(errorModel);
    listError.refresh();
  }

  clearOutput() {
    listError.clear();
    listError.refresh();
    outputLeftEye.value = null;
    outputRightEye.value = null;
    isContactLensRightSphereError.value = false;
    isContactLensRightCylinderError.value = false;
    isContactLensRightAxisError.value = false;
    isContactLensRightRadiusOneError.value = false;
    isContactLensRightRadiusTwoError.value = false;
    isContactLensLeftSphereError.value = false;
    isContactLensLeftCylinderError.value = false;
    isContactLensLeftAxisError.value = false;
    isContactLensLeftRadiusOneError.value = false;
    isContactLensLeftRadiusTwoError.value = false;
    isNewContactLensRightSphereError.value = false;
    isNewContactLensRightCylinderError.value = false;
    isNewContactLensRightAxisError.value = false;
    isNewContactLensRightRadiusOneError.value = false;
    isNewContactLensRightRadiusTwoError.value = false;
    isNewContactLensLeftSphereError.value = false;
    isNewContactLensLeftCylinderError.value = false;
    isNewContactLensLeftAxisError.value = false;
    isNewContactLensLeftRadiusOneError.value = false;
    isNewContactLensLeftRadiusTwoError.value = false;
  }

  clearForm() {
    clearOutput();
    contactLensRightSphereController.clear();
    contactLensRightCylinderController.clear();
    contactLensRightAxisController.clear();
    contactLensRightRadiusOneController.clear();
    contactLensRightRadiusTwoController.clear();
    rightLensTextEditingController.clear();
    modalRightLensTextEditingController.clear();
    contactLensLeftSphereController.clear();
    contactLensLeftCylinderController.clear();
    contactLensLeftAxisController.clear();
    contactLensLeftRadiusOneController.clear();
    contactLensLeftRadiusTwoController.clear();
    leftLensTextEditingController.clear();
    modalLeftLensTextEditingController.clear();
    leftLensController.clear();
    rightLensController.clear();

    newContactLensRightSphereController.clear();
    newContactLensRightCylinderController.clear();
    newContactLensRightAxisController.clear();
    newContactLensRightRadiusOneController.clear();
    newContactLensRightRadiusTwoController.clear();
    newContactLensLeftSphereController.clear();
    newContactLensLeftCylinderController.clear();
    newContactLensLeftAxisController.clear();
    newContactLensLeftRadiusOneController.clear();
    newContactLensLeftRadiusTwoController.clear();
    rightVertexController.clear();
    leftVertexController.clear();
    initDefaultValue();
  }

  // ContactLens
  // contact lens text controller - right eye
  TextEditingController contactLensRightSphereController = TextEditingController();
  TextEditingController contactLensRightCylinderController = TextEditingController();
  TextEditingController contactLensRightAxisController = TextEditingController();
  TextEditingController contactLensRightRadiusOneController = TextEditingController();
  TextEditingController contactLensRightRadiusTwoController = TextEditingController();
  // selected material
  Rxn<MaterialCollection> contactLensRightEyeMaterial = Rxn<MaterialCollection>();
  // rotation radius
  TextEditingController rightLensTextEditingController = TextEditingController();
  RightLensController rightLensController = Get.put(RightLensController());
  // rotation radius modal
  TextEditingController modalRightLensTextEditingController = TextEditingController();
  ModalRightLensController modalRightLensController = Get.put(ModalRightLensController());

  // contact lens text controller - left eye
  TextEditingController contactLensLeftSphereController = TextEditingController();
  TextEditingController contactLensLeftCylinderController = TextEditingController();
  TextEditingController contactLensLeftAxisController = TextEditingController();
  TextEditingController contactLensLeftRadiusOneController = TextEditingController();
  TextEditingController contactLensLeftRadiusTwoController = TextEditingController();
  // selected material
  Rxn<MaterialCollection> contactLensLeftEyeMaterial = Rxn<MaterialCollection>();
  // rotation radius
  TextEditingController leftLensTextEditingController = TextEditingController();
  LeftLensController leftLensController = Get.put(LeftLensController());
  // rotation radius modal
  TextEditingController modalLeftLensTextEditingController = TextEditingController();
  ModalLeftLensController modalLeftLensController = Get.put(ModalLeftLensController());

  // ------------------------

  // New ContactLens
  // New contact lens text controller - right eye
  TextEditingController newContactLensRightSphereController = TextEditingController();
  TextEditingController newContactLensRightCylinderController = TextEditingController();
  TextEditingController newContactLensRightAxisController = TextEditingController();
  TextEditingController newContactLensRightRadiusOneController = TextEditingController();
  TextEditingController newContactLensRightRadiusTwoController = TextEditingController();
  // selected material
  Rxn<MaterialCollection> newContactLensRightEyeMaterial = Rxn<MaterialCollection>();

  // New  contact lens text controller - left eye
  TextEditingController newContactLensLeftSphereController = TextEditingController();
  TextEditingController newContactLensLeftCylinderController = TextEditingController();
  TextEditingController newContactLensLeftAxisController = TextEditingController();
  TextEditingController newContactLensLeftRadiusOneController = TextEditingController();
  TextEditingController newContactLensLeftRadiusTwoController = TextEditingController();
  // selected material
  Rxn<MaterialCollection> newContactLensLeftEyeMaterial = Rxn<MaterialCollection>();
  // vertex
  TextEditingController rightVertexController = TextEditingController();
  TextEditingController leftVertexController = TextEditingController();
  // ------------------------

  RxList<MaterialCollection> materialCollection = RxList.empty(growable: true);
  initData() async {
    materialCollection.value = await mainController.isar!.collection<MaterialCollection>().where().findAll();
    materialCollection.refresh();
  }

  initDefaultValue() {
    rightLensTextEditingController.text = CommonLib.defaultRotation;
    leftLensTextEditingController.text = CommonLib.defaultRotation;
    rightVertexController.text = CommonLib.defaultVertex;
    leftVertexController.text = CommonLib.defaultVertex;
    contactLensRightEyeMaterial.value = materialCollection.first;
    contactLensLeftEyeMaterial.value = materialCollection.first;
    newContactLensRightEyeMaterial.value = materialCollection.first;
    newContactLensLeftEyeMaterial.value = materialCollection.first;
  }

  Rx<ViewState> state = Rx(ViewState.empty);

  @override
  void onInit() async {
    state.value = ViewState.loading;
    await initData();
    initDefaultValue();

    state.value = ViewState.loaded;
    super.onInit();
  }

  initModalLensData() {
    modalLeftLensTextEditingController.text = leftLensTextEditingController.text;
    modalRightLensTextEditingController.text = rightLensTextEditingController.text;
    modalLeftLensController.saveRotation(modalLeftLensTextEditingController.text);
    modalRightLensController.saveRotation(modalRightLensTextEditingController.text);
    modalLeftLensController.setRotation();
    modalRightLensController.setRotation();
  }

  saveModalLensData() {
    leftLensTextEditingController.text = modalLeftLensTextEditingController.text;
    rightLensTextEditingController.text = modalRightLensTextEditingController.text;

    leftLensController.saveRotation(leftLensTextEditingController.text);
    rightLensController.saveRotation(rightLensTextEditingController.text);
    leftLensController.setRotation();
    rightLensController.setRotation();
  }

  disposeModalLensData() {
    modalLeftLensTextEditingController.dispose();
    modalRightLensTextEditingController.dispose();
    modalLeftLensController.dispose();
    modalRightLensController.dispose();
  }

  // calculateRGPLens
  Rxn<RGPLensOutput> outputLeftEye = Rxn();
  Rxn<RGPLensOutput> outputRightEye = Rxn();
  calculateRGPLens() async {
    try {
      clearOutput();
      var leftEyeValidationResult = validateLeftEye();
      var rightEyeValidationResult = validateRightEye();

      if (leftEyeValidationResult) {
        outputLeftEye.value = calculateRGP(
          RGPLensInput(
            r1Old: double.parse(contactLensLeftRadiusOneController.value.text),
            r2Old: double.parse(contactLensLeftRadiusTwoController.value.text),
            sphereOld: double.tryParse(contactLensLeftSphereController.value.text) ?? 0,
            cylinderOld: double.tryParse(contactLensLeftCylinderController.value.text) ?? 0,
            axisOld: double.tryParse(contactLensLeftAxisController.value.text) ?? 0,
            nOld: contactLensLeftEyeMaterial.value!.n!,
            rotation: double.parse(leftLensTextEditingController.value.text),
            sphereAR: double.tryParse(newContactLensLeftSphereController.value.text) ?? 0,
            cylinderAR: double.tryParse(newContactLensLeftCylinderController.value.text) ?? 0,
            axisAR: double.tryParse(newContactLensLeftAxisController.value.text) ?? 0,
            vertex: double.parse(leftVertexController.value.text),
            r1New: double.parse(newContactLensLeftRadiusOneController.value.text),
            r2New: double.parse(newContactLensLeftRadiusTwoController.value.text),
            nNew: newContactLensLeftEyeMaterial.value!.n!,
            fraction: Strings.roundingMap[await SettingsStorage.getLensRounding()]!,
            sign: Strings.notationMap[await SettingsStorage.getLensNotation()]!,
          ),
        );
      }

      if (rightEyeValidationResult) {
        outputRightEye.value = calculateRGP(
          RGPLensInput(
            r1Old: double.parse(contactLensRightRadiusOneController.value.text),
            r2Old: double.parse(contactLensRightRadiusTwoController.value.text),
            sphereOld: double.tryParse(contactLensRightSphereController.value.text) ?? 0,
            cylinderOld: double.tryParse(contactLensRightCylinderController.value.text) ?? 0,
            axisOld: double.tryParse(contactLensRightAxisController.value.text) ?? 0,
            nOld: contactLensRightEyeMaterial.value!.n!,
            rotation: double.parse(rightLensTextEditingController.value.text),
            sphereAR: double.tryParse(newContactLensRightSphereController.value.text) ?? 0,
            cylinderAR: double.tryParse(newContactLensRightCylinderController.value.text) ?? 0,
            axisAR: double.tryParse(newContactLensRightAxisController.value.text) ?? 0,
            vertex: double.parse(rightVertexController.value.text),
            r1New: double.parse(newContactLensRightRadiusOneController.value.text),
            r2New: double.parse(newContactLensRightRadiusTwoController.value.text),
            nNew: newContactLensRightEyeMaterial.value!.n!,
            fraction: Strings.roundingMap[await SettingsStorage.getLensRounding()]!,
            sign: Strings.notationMap[await SettingsStorage.getLensNotation()]!,
          ),
        );
      }
    } catch (e) {
      pushError(
        ErrorModel(
          at: 'Calculation',
          description: e.toString(),
        ),
      );
    }
  }

  bool validateRightEye() {
    if (contactLensRightSphereController.text.isEmpty &&
        contactLensRightCylinderController.text.isEmpty &&
        contactLensRightAxisController.text.isEmpty &&
        contactLensRightRadiusOneController.text.isEmpty &&
        contactLensRightRadiusTwoController.text.isEmpty &&
        newContactLensRightSphereController.text.isEmpty &&
        newContactLensRightCylinderController.text.isEmpty &&
        newContactLensRightAxisController.text.isEmpty &&
        newContactLensRightRadiusOneController.text.isEmpty &&
        newContactLensRightRadiusTwoController.text.isEmpty) {
      return false;
    }
    //If the user enters a cylinder value, there must also be a axis value
    if (contactLensRightCylinderController.text.isNotEmpty && contactLensRightAxisController.text.isEmpty) {
      //TD: throw error axis is should be filled
      isContactLensRightAxisError.value = true;
      pushError(ErrorMessages.rightAxisShouldFilled);
    }
    //If the user enters a axis value, there must also by a cylinder value.
    if (contactLensRightCylinderController.text.isEmpty && contactLensRightAxisController.text.isNotEmpty) {
      //TD: throw error cyl is should be filled
      isContactLensRightCylinderError.value = true;
      pushError(ErrorMessages.rightCylinderShouldFilled);
    }

    // if user didnt enter both of them : No value. The fields remain empty and we don’t pass anything to the function. or 0
    if (contactLensRightCylinderController.text.isEmpty && contactLensRightAxisController.text.isEmpty) {
      contactLensRightCylinderController.text = '0';
      contactLensRightAxisController.text = '0';
    }

    //If the user enters cylinder and axis but no sphere, then the sphere will be set to 0.00
    // If the user does not enter a value in sphere, cylinder or axis for the initial lens,
    // we show an error for the sphere field (user must enter a value)
    if (contactLensRightCylinderController.text.isNotEmpty &&
        contactLensRightAxisController.text.isNotEmpty &&
        contactLensRightSphereController.text.isEmpty) {
      contactLensRightSphereController.text = '0.00';
    }
    if (contactLensRightCylinderController.text.isEmpty &&
        contactLensRightAxisController.text.isEmpty &&
        contactLensRightSphereController.text.isEmpty) {
      isContactLensRightCylinderError.value = true;
      isContactLensRightAxisError.value = true;
      isContactLensRightSphereError.value = true;
      pushError(ErrorMessages.rightSphereShouldFilled);
    }

    // There must be at least one value in radius1 or radius2 for the initial lens and the new lens parameters.
    if (contactLensRightRadiusOneController.text.isEmpty && contactLensRightRadiusTwoController.text.isEmpty) {
      //TD: throw error that one of them is need to fill
      isContactLensRightRadiusOneError.value = true;
      isContactLensRightRadiusTwoError.value = true;
      pushError(ErrorMessages.radiusShouldFilled);
    }
    // If the user enters a value for radius1 and not radius2 we fill radius2 with value of radius2 … and vice versa.
    if (contactLensRightRadiusOneController.text.isNotEmpty && contactLensRightRadiusTwoController.text.isEmpty) {
      contactLensRightRadiusTwoController.text = contactLensRightRadiusOneController.text;
    }
    if (contactLensRightRadiusOneController.text.isEmpty && contactLensRightRadiusTwoController.text.isNotEmpty) {
      contactLensRightRadiusOneController.text = contactLensRightRadiusTwoController.text;
    }

    // new lens validation :

    // If the user does not enter any values for radius1 and radius2 for the new lens we use the values of the initial lens here
    if (newContactLensRightRadiusOneController.text.isEmpty && newContactLensRightRadiusTwoController.text.isEmpty) {
      newContactLensRightRadiusOneController.text = contactLensRightRadiusOneController.text;
      newContactLensRightRadiusTwoController.text = contactLensRightRadiusTwoController.text;
    }

    // If the user does not any values for sphere cylinder and axis for the over-refraction, then we fill sphere with +0.00
    if (newContactLensRightCylinderController.text.isEmpty &&
        newContactLensRightAxisController.text.isEmpty &&
        newContactLensRightSphereController.text.isEmpty) {
      newContactLensRightCylinderController.text = '0';
      newContactLensRightAxisController.text = '0';
      newContactLensRightSphereController.text = '0';
    }

    return (isContactLensRightSphereError.value == false &&
        isContactLensRightCylinderError.value == false &&
        isContactLensRightAxisError.value == false &&
        isContactLensRightRadiusOneError.value == false &&
        isContactLensRightRadiusTwoError.value == false &&
        isNewContactLensRightSphereError.value == false &&
        isNewContactLensRightCylinderError.value == false &&
        isNewContactLensRightAxisError.value == false &&
        isNewContactLensRightRadiusOneError.value == false &&
        isNewContactLensRightRadiusTwoError.value == false);
  }

  bool validateLeftEye() {
    if (contactLensLeftSphereController.text.isEmpty &&
        contactLensLeftCylinderController.text.isEmpty &&
        contactLensLeftAxisController.text.isEmpty &&
        contactLensLeftRadiusOneController.text.isEmpty &&
        contactLensLeftRadiusTwoController.text.isEmpty &&
        newContactLensLeftSphereController.text.isEmpty &&
        newContactLensLeftCylinderController.text.isEmpty &&
        newContactLensLeftAxisController.text.isEmpty &&
        newContactLensLeftRadiusOneController.text.isEmpty &&
        newContactLensLeftRadiusTwoController.text.isEmpty) {
      return false;
    }
    //If the user enters a cylinder value, there must also be a axis value
    if (contactLensLeftCylinderController.text.isNotEmpty && contactLensLeftAxisController.text.isEmpty) {
      //TD: throw error axis is should be filled
      isContactLensLeftAxisError.value = true;
      pushError(ErrorMessages.leftAxisShouldFilled);
    }
    //If the user enters a axis value, there must also by a cylinder value.
    if (contactLensLeftCylinderController.text.isEmpty && contactLensLeftAxisController.text.isNotEmpty) {
      //TD: throw error cyl is should be filled
      isContactLensLeftCylinderError.value = true;
      pushError(ErrorMessages.leftCylinderShouldFilled);
    }

    // if user didnt enter both of them : No value. The fields remain empty and we don’t pass anything to the function. or 0
    if (contactLensLeftCylinderController.text.isEmpty && contactLensLeftAxisController.text.isEmpty) {
      contactLensLeftCylinderController.text = '0';
      contactLensLeftAxisController.text = '0';
    }

    //If the user enters cylinder and axis but no sphere, then the sphere will be set to 0.00
    // If the user does not enter a value in sphere, cylinder or axis for the initial lens,
    // we show an error for the sphere field (user must enter a value)
    if (contactLensLeftCylinderController.text.isNotEmpty &&
        contactLensLeftAxisController.text.isNotEmpty &&
        contactLensLeftSphereController.text.isEmpty) {
      contactLensLeftSphereController.text = '0.00';
    }
    if (contactLensLeftCylinderController.text.isEmpty &&
        contactLensLeftAxisController.text.isEmpty &&
        contactLensLeftSphereController.text.isEmpty) {
      isContactLensLeftCylinderError.value = true;
      isContactLensLeftAxisError.value = true;
      isContactLensLeftSphereError.value = true;
      pushError(ErrorMessages.leftSphereShouldFilled);
    }

    // There must be at least one value in radius1 or radius2 for the initial lens and the new lens parameters.
    if (contactLensLeftRadiusOneController.text.isEmpty && contactLensLeftRadiusTwoController.text.isEmpty) {
      //TD: throw error that one of them is need to fill
      isContactLensLeftRadiusOneError.value = true;
      isContactLensLeftRadiusTwoError.value = true;
      pushError(ErrorMessages.radiusShouldFilled);
    }
    // If the user enters a value for radius1 and not radius2 we fill radius2 with value of radius2 … and vice versa.
    if (contactLensLeftRadiusOneController.text.isNotEmpty && contactLensLeftRadiusTwoController.text.isEmpty) {
      contactLensLeftRadiusTwoController.text = contactLensLeftRadiusOneController.text;
    }
    if (contactLensLeftRadiusOneController.text.isEmpty && contactLensLeftRadiusTwoController.text.isNotEmpty) {
      contactLensLeftRadiusOneController.text = contactLensLeftRadiusTwoController.text;
    }

    // new lens validation :

    // If the user does not enter any values for radius1 and radius2 for the new lens we use the values of the initial lens here
    if (newContactLensLeftRadiusOneController.text.isEmpty && newContactLensLeftRadiusTwoController.text.isEmpty) {
      newContactLensLeftRadiusOneController.text = contactLensLeftRadiusOneController.text;
      newContactLensLeftRadiusTwoController.text = contactLensLeftRadiusTwoController.text;
    }

    // If the user does not any values for sphere cylinder and axis for the over-refraction, then we fill sphere with +0.00
    if (newContactLensLeftCylinderController.text.isEmpty &&
        newContactLensLeftAxisController.text.isEmpty &&
        newContactLensLeftSphereController.text.isEmpty) {
      newContactLensLeftCylinderController.text = '0';
      newContactLensLeftAxisController.text = '0';
      newContactLensLeftSphereController.text = '0';
    }

    return (isContactLensLeftSphereError.value == false &&
        isContactLensLeftCylinderError.value == false &&
        isContactLensLeftAxisError.value == false &&
        isContactLensLeftRadiusOneError.value == false &&
        isContactLensLeftRadiusTwoError.value == false &&
        isNewContactLensLeftSphereError.value == false &&
        isNewContactLensLeftCylinderError.value == false &&
        isNewContactLensLeftAxisError.value == false &&
        isNewContactLensLeftRadiusOneError.value == false &&
        isNewContactLensLeftRadiusTwoError.value == false);
  }
}

// extended class
class RightLensController extends LensController {}

class LeftLensController extends LensController {}

class ModalRightLensController extends LensController {}

class ModalLeftLensController extends LensController {}
