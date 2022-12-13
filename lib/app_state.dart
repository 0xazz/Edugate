import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  late SharedPreferences prefs;

  bool _up = false;
  bool get up => _up;
  set up(bool _value) {
    notifyListeners();

    _up = _value;
  }

  List<double> _expGrades = [];
  List<double> get expGrades => _expGrades;
  set expGrades(List<double> _value) {
    notifyListeners();

    _expGrades = _value;
  }

  void addToExpGrades(double _value) {
    notifyListeners();
    _expGrades.add(_value);
  }

  void removeFromExpGrades(double _value) {
    notifyListeners();
    _expGrades.remove(_value);
  }

  List<int> _expCreds = [];
  List<int> get expCreds => _expCreds;
  set expCreds(List<int> _value) {
    notifyListeners();

    _expCreds = _value;
  }

  void addToExpCreds(int _value) {
    notifyListeners();
    _expCreds.add(_value);
  }

  void removeFromExpCreds(int _value) {
    notifyListeners();
    _expCreds.remove(_value);
  }

  List<int> _insrate = [];
  List<int> get insrate => _insrate;
  set insrate(List<int> _value) {
    notifyListeners();

    _insrate = _value;
  }

  void addToInsrate(int _value) {
    notifyListeners();
    _insrate.add(_value);
  }

  void removeFromInsrate(int _value) {
    notifyListeners();
    _insrate.remove(_value);
  }

  List<DateTime> _timetable = [];
  List<DateTime> get timetable => _timetable;
  set timetable(List<DateTime> _value) {
    notifyListeners();

    _timetable = _value;
  }

  void addToTimetable(DateTime _value) {
    notifyListeners();
    _timetable.add(_value);
  }

  void removeFromTimetable(DateTime _value) {
    notifyListeners();
    _timetable.remove(_value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
