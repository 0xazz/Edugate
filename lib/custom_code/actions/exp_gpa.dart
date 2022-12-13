// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> expGpa(
  List<double> expGrades,
  List<int> expCreds,
) async {
  // calculate expected gpa
  double sumCredits = 0;
  double sumGrades = 0;
  for (int i = 0; i < expCreds.length; i++) {
    // print(credits[i].runtimeType);
    sumCredits += expCreds[i];
    sumGrades += (expCreds[i] * expGrades[i]);
  }
  return sumGrades / sumCredits;
}
