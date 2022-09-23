// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future<UsersRecord?> appSettingDocument() async {
  var r = await queryUsersRecordOnce(singleRecord: true);
  if (r.length == 0) return null;
  return r[0];
}
