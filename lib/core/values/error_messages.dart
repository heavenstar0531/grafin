import 'package:lens_new/app/data/models/error_model.dart';

class ErrorMessages {
  ErrorMessages._();

  //If the user enters a cylinder value, there must also be a axis value
  //TD: throw error axis is should be filled
  static ErrorModel rightAxisShouldFilled = ErrorModel(
    at: 'Initial Lens',
    title: 'Contact Lens Right Axis',
    description: 'If you enters Cylinder Value, there must also be an Axis Value',
  );

  //If the user enters a axis value, there must also by a cylinder value.
  //TD: throw error cyl is should be filled
  static ErrorModel rightCylinderShouldFilled = ErrorModel(
    at: 'Initial Lens',
    title: 'Contact Lens Right Cylinder',
    description: 'If you enters Axis Value, there must also be an Cylinder Value',
  );

  //If the user enters cylinder and axis but no sphere, then the sphere will be set to 0.00
  // If the user does not enter a value in sphere, cylinder or axis for the initial lens,
  // we show an error for the sphere field (user must enter a value)
  static ErrorModel rightSphereShouldFilled = ErrorModel(
    at: 'Initial Lens',
    title: 'Contact Lens Right Sphere',
    description: '''Contact Lens Right Sphere Should be filled if Cylinder and Axis is not empty. Suggested Option :

    option 1 : fill the Sphere
    option 2 : fill all of that''',
  );

  // There must be at least one value in radius1 or radius2 for the initial lens and the new lens parameters.

  //TD: throw error that one of them is need to fill
  static ErrorModel radiusShouldFilled = ErrorModel(
    at: 'Initial Lens',
    title: 'Contact Lens Right Radius',
    description: 'There must be at least one value in Radius1 or Radius2 for the initial lens',
  );

  //If the user enters a cylinder value, there must also be a axis value
  //TD: throw error axis is should be filled
  static ErrorModel leftAxisShouldFilled = ErrorModel(
    at: 'Initial Lens',
    title: 'Contact Lens Right Axis',
    description: 'If you enters Cylinder Value, there must also be an Axis Value',
  );

  //If the user enters a axis value, there must also by a cylinder value.
  //TD: throw error cyl is should be filled
  static ErrorModel leftCylinderShouldFilled = ErrorModel(
    at: 'Initial Lens',
    title: 'Contact Lens Right Cylinder',
    description: 'If you enters Axis Value, there must also be an Cylinder Value',
  );

  //If the user enters cylinder and axis but no sphere, then the sphere will be set to 0.00
  // If the user does not enter a value in sphere, cylinder or axis for the initial lens,
  // we show an error for the sphere field (user must enter a value)
  static ErrorModel leftSphereShouldFilled = ErrorModel(
    at: 'Initial Lens',
    title: 'Contact Lens Right Sphere',
    description: '''Contact Lens Right Sphere Should be filled if Cylinder and Axis is not empty. Suggested Option :

    option 1 : fill the Sphere
    option 2 : fill all of that''',
  );
}
