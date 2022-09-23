import '../backend/backend.dart';
import '../components/header_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AHomeWidget extends StatefulWidget {
  const AHomeWidget({
    Key? key,
    this.appSetting,
  }) : super(key: key);

  final AppSettingRecord? appSetting;

  @override
  _AHomeWidgetState createState() => _AHomeWidgetState();
}

class _AHomeWidgetState extends State<AHomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ),
              HeaderWidget(
                title: ' ',
                subPage: false,
                backToHome: false,
                background: FlutterFlowTheme.of(context).primaryBackground,
                showLogoOnTitle: false,
                noBack: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
