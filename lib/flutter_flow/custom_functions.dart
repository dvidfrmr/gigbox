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

String joint2String(
  String string1,
  String string2,
) {
  // Add your function code here!

  return string1 + " " + string2;
}

double? stringToDouble(String? value) {
  // Add your function code here!
  if (value == null || value.isEmpty || value == '') return 0.0;
  return double.parse(value.trim().replaceAll(',', ''));
}

int? stringToInteger(String? value) {
  // Add your function code here!
  if (value == null || value.isEmpty || value == '') return 0;
  return int.parse(value.trim().replaceAll(',', ''));
}

DateTime getTimeToPastOrFuture(
  bool isPast,
  bool isHours,
  DateTime fromWhen,
  int howMany,
) {
  // Add your function code here!
  if (!isPast) {
    if (isHours) {
      return DateTime.now().add(Duration(hours: howMany));
    } else {
      return DateTime.now().add(Duration(days: howMany));
    }
  }
  if (isPast) {
    if (isHours) {
      return DateTime.now().subtract(Duration(hours: howMany));
    } else {
      return DateTime.now().subtract(Duration(days: howMany));
    }
  }

  return fromWhen;
}

bool bandInvited(
  DocumentReference? band,
  List<ActInviteStruct>? invite,
) {
  // Add your function code here!
  if (band == null) {
    return false;
  }
  if (invite == null) {
    return false;
  }
  for (var i in invite) {
    if (i.band.toString() == band.toString()) {
      return true;
    }
  }
  return false;
}

bool bandRequests(
  BandRecord? band,
  List<ActRequestStruct>? request,
) {
  // Add your function code here!
  if (band == null) {
    return false;
  }
  if (request == null) {
    return false;
  }
  for (var r in request) {
    if (r.band.toString() == band.toString()) {
      return true;
    }
  }
  return false;
}
