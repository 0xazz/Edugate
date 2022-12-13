import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double calcAbsns(
  double adays,
  double absences,
) {
  // calc attendance rate
  return (absences / (adays * 15)) * 100;
}

bool canAddCourse(
  List<DateTime> timetable,
  List<DateTime> secdatetime,
) {
  var addable = true;
  // check if elements of  list in other list
  for (var timetableItem in timetable) {
    for (var datetimeItem in secdatetime) {
      if (DateFormat.EEEE().format(timetableItem) ==
              DateFormat.EEEE().format(datetimeItem) &&
          DateFormat.jm().format(timetableItem) ==
              DateFormat.jm().format(datetimeItem)) {
        addable = false;
      }
    }
  }

  return addable;
}

bool canAddCourseCopy(
  List<DateTime> timetable,
  List<DateTime> secdatetime,
) {
  var addable = true;
  // check if elements of  list in other list
  for (var timetableItem in timetable) {
    for (var datetimeItem in secdatetime) {
      if (timetableItem.compareTo(datetimeItem) == 0) {
        addable = false;
      }
    }
  }

  return addable;
}

List<DateTime> addCourseToTimeTable(
  List<DateTime> timetable,
  List<DateTime> secdatetime,
) {
  timetable.addAll(secdatetime);
  timetable.sort((a, b) {
    //sorting in descending order
    return a.compareTo(b);
  });
  /*for (var i = 0; i < timetable.length; i++) {
    timetable[i] = DateTime(
        timetable[i].year,
        timetable[i].month,
        timetable[i].day,
        timetable[i].hour,
        timetable[i].minute,
        timetable[i].second);
  }*/
  return timetable;
}

List<DateTime> removeCourseFromTimeTable(
  List<DateTime> timetable,
  List<DateTime> secdatetime,
) {
  for (var timetableItem in timetable) {
    for (var datetimeItem in secdatetime) {
      if (timetableItem.compareTo(datetimeItem) == 0) {
        timetable.remove(datetimeItem);
      }
    }
  }
  return (timetable);
}

String generateDays(List<DateTime> secdatetime) {
  var dayzero = DateFormat.EEEE().format(secdatetime[0]);
  var days = "";
  days = days + dayzero;
  for (var i = 1; i < secdatetime.length; i++) {
    // ignore: unnecessary_statements
    var day = DateFormat.EEEE().format(secdatetime[i]);
    days = days + "-" + day;
  }
  return (days);
}

String generateTime(List<DateTime> secdatetime) {
  return (DateFormat.jm().format(secdatetime[0]));
}

List<DateTime> getsunday(
  List<DateTime> timetable,
  String day,
) {
  List<DateTime> days = [];
  for (var timetable_elm in timetable) {
    if (DateFormat.EEEE().format(timetable_elm) == day) {
      days.add(timetable_elm);
    }
  }
  return (days);
}
