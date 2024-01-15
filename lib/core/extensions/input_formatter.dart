import 'package:lens_new/core/values/enum.dart';

class InputFormatter {
  InputFormatter._();

  static String onTypingFormat(String input, InputType type) {
    // for sphere, cylinder and radius
    if (type == InputType.sphere || type == InputType.cylinder) {
      if (input.contains(',') || input.contains('.')) {
        List<String> splittedInput = [];
        if (input.contains('.')) {
          splittedInput = input.split('.');
        }
        if (input.contains(',')) {
          splittedInput = input.split('.');
        }
        String left = splittedInput[0];
        String right = splittedInput[1];
        if (left[0] != '+' && left[0] != '-') {
          if (input.length <= 1) {
            return input;
          }
          if (left.length > 2) {
            left = left.substring(0, 2);
          }
          if (right.length > 2) {
            left = left.substring(0, 2);
          }
        } else {
          if (left.length > 2) {
            left = left.substring(0, 3);
          }
          if (right.length > 2) {
            left = left.substring(0, 3);
          }
        }
        return '$left.$right';
      } else {
        if (input[0] != '+' && input[0] != '-') {
          if (input.length <= 1) {
            return input;
          } else if (input.length == 2) {
            return input;
          } else if (input.length == 3) {
            return '${input.substring(0, 2)}.${input.substring(2)}';
          } else {
            return '${input.substring(0, 2)}.${input.substring(2, 4)}';
          }
        } else {
          if (input.length == 3) {
            return input;
          } else if (input.length == 4) {
            return '${input.substring(0, 3)}.${input.substring(3, 4)}';
          } else {
            return '${input.substring(0, 3)}.${input.substring(3, 4)}';
          }
        }
      }
    } else {
      return input;
    }
  }

  static String afterTypingFormat(String input, InputType type) {
    if (input == '') {
      return input;
    }

    String formattedInput = input;

    if (input.contains(',')) {
      final strings = formattedInput.split(',');
      String stringBeforeDot = strings[0];
      String stringAfterDot = strings[1];
      if (stringAfterDot.isEmpty) {
        stringAfterDot = '00';
      }
      if (stringBeforeDot.isEmpty) {
        stringBeforeDot = '00';
      }
      if (stringAfterDot.length == 1) {
        stringAfterDot += '0';
      }
      formattedInput = '$stringBeforeDot.$stringAfterDot';
    } else {
      if (!input.contains('.')) {
        formattedInput += '.00';
      }
      if (formattedInput.startsWith(".")) {
        formattedInput = "00$formattedInput";
      }
      if (formattedInput.endsWith('.')) {
        formattedInput += '00';
      }
      if (formattedInput.split('.')[1].length == 1) {
        formattedInput += '0';
      }
    }

    if (type == InputType.sphere || type == InputType.axis || type == InputType.cylinder) {
      return '+$formattedInput';
    }

    return formattedInput;
  }
}
