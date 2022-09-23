// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import '../../backend/backend.dart';

Future<AppSettingRecord?> getAppSetting(BuildContext context) async {
  var r = await queryAppSettingRecordOnce(
      queryBuilder: (AppSettingRecord) => AppSettingRecord,
      limit: -1,
      singleRecord: true);
  if (r.length == 0) return null;
  return r[0];
}
