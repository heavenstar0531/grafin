import 'dart:math' as math;

class CommonLib {
  static int requiredDegree(int degree) {
    // if(degree >= 180) {
    //   degree -= 180;
    // } else if(degree <= -180) {
    //   degree += 180;
    // }
    // return degree;
    if (degree > 90) {
      degree -= 180;
    } else if (degree < -90) {
      degree += 180;
    }
    return degree;
  }

  static int requireDegreeForRotation(int degree) {
    if (degree < 0) {
      degree += 180;
    } else if (degree > 180) {
      degree -= 180;
    }
    return degree;
  }

  static double degreeToRadiant(int degree) {
    return degree * -math.pi / 180;
  }

  static int radiantToDegree(double radiant) {
    return (radiant * -180 / math.pi).round();
  }

  static String formatInput(String input, bool isRadius) {
    if (input.isEmpty) {
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

    if (!isRadius) {
      if (!formattedInput.contains('+') && !formattedInput.contains('-')) {
        formattedInput = '+$formattedInput';
      }
    }
    return formattedInput;
  }

  // static void setURL(String route) {
  //   html.window.history.pushState(null, '', route);
  // }

  // constants
  static double miniLensSize = 25;
  static double lensSize = 100;
  static int animationDuration = 2000;
  static int outputAnimationDuration = 800;
  static double minDesktopWidth = 800;
  static double minDesktopHeight = 700;
  static String defaultVertex = "12.0";
  static String defaultRotation = "180";
  static String defaultSphere = "+0.00";
}
