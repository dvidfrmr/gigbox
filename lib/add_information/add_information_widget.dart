import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../checkup/checkup_widget.dart';
import '../components/header_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddInformationWidget extends StatefulWidget {
  const AddInformationWidget({Key? key}) : super(key: key);

  @override
  _AddInformationWidgetState createState() => _AddInformationWidgetState();
}

class _AddInformationWidgetState extends State<AddInformationWidget> {
  String? ddCityValue;
  TextEditingController? tfFirstnameController;
  TextEditingController? tfLastnameController;
  TextEditingController? tfPhoneController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    tfFirstnameController = TextEditingController();
    tfLastnameController = TextEditingController();
    tfPhoneController = TextEditingController();
  }

  @override
  void dispose() {
    tfFirstnameController?.dispose();
    tfLastnameController?.dispose();
    tfPhoneController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            HeaderWidget(
              title: ' ',
              subPage: true,
              backToHome: false,
              background: FlutterFlowTheme.of(context).primaryBackground,
              showLogoOnTitle: true,
              noBack: true,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 36, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SvgPicture.asset(
                              'assets/images/gigbox-full_logo_2.svg',
                              width: 100,
                              height: 21,
                              fit: BoxFit.fitHeight,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  'Welcome to \nGigbox!',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Exo 2',
                                        fontSize: 28,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 46, 0, 0),
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: tfFirstnameController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'First Name',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Exo 2',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .lightGray,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .lightGray,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 22, 22, 22),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Exo 2',
                                          fontSize: 13,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: tfLastnameController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Last Name',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Exo 2',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .lightGray,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .lightGray,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 22, 22, 22),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Exo 2',
                                          fontSize: 13,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: tfPhoneController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Phone Number',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Exo 2',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 13,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .lightGray,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .lightGray,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16, 22, 22, 22),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Exo 2',
                                          fontSize: 13,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: FutureBuilder<List<CityRecord>>(
                                    future: queryCityRecordOnce(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<CityRecord> ddCityCityRecordList =
                                          snapshot.data!;
                                      return FlutterFlowDropDown(
                                        options: ddCityCityRecordList
                                            .map((e) => e.name!)
                                            .toList()
                                            .toList(),
                                        onChanged: (val) =>
                                            setState(() => ddCityValue = val),
                                        width: 180,
                                        height: 55,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Exo 2',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 13,
                                            ),
                                        hintText: 'City',
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .lightGray,
                                        borderWidth: 0,
                                        borderRadius: 5,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            16, 4, 16, 4),
                                        hidesUnderline: true,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'How would you like to use Gigbox?',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Exo 2',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      if (FFAppState().RoleSelect == 'artist') {
                                        setState(() =>
                                            FFAppState().RoleSelect = 'user');
                                      } else {
                                        setState(() =>
                                            FFAppState().RoleSelect = 'artist');
                                      }
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 4),
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: 25,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              if (FFAppState().RoleSelect ==
                                                  'artist')
                                                Container(
                                                  width: 25,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6, 0, 0, 0),
                                              child: Text(
                                                'I’m an artist.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Exo 2',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                              ),
                                            ),
                                            if (FFAppState().RoleSelect ==
                                                'artist')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(6, 0, 0, 0),
                                                child: Text(
                                                  'I’m an artist.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Exo 2',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      if (FFAppState().RoleSelect == 'venue') {
                                        setState(() =>
                                            FFAppState().RoleSelect = 'user');
                                      } else {
                                        setState(() =>
                                            FFAppState().RoleSelect = 'venue');
                                      }
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 4),
                                          child: Stack(
                                            children: [
                                              Container(
                                                width: 25,
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                              ),
                                              if (FFAppState().RoleSelect ==
                                                  'venue')
                                                Container(
                                                  width: 25,
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6, 0, 0, 0),
                                              child: Text(
                                                'I have a venue.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Exo 2',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                              ),
                                            ),
                                            if (FFAppState().RoleSelect ==
                                                'venue')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(6, 0, 0, 0),
                                                child: Text(
                                                  'I have a venue.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Exo 2',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 36, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        child: Stack(
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () {
                                                print(
                                                    'btn_signup_f pressed ...');
                                              },
                                              text: 'Submit',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 60,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Exo 2',
                                                          color:
                                                              Color(0x7F0156E4),
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            StreamBuilder<List<CityRecord>>(
                                              stream: queryCityRecord(
                                                queryBuilder: (cityRecord) =>
                                                    cityRecord.where('name',
                                                        isEqualTo: ddCityValue),
                                                singleRecord: true,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CityRecord>
                                                    btnSignupCityRecordList =
                                                    snapshot.data!;
                                                // Return an empty Container when the document does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final btnSignupCityRecord =
                                                    btnSignupCityRecordList
                                                            .isNotEmpty
                                                        ? btnSignupCityRecordList
                                                            .first
                                                        : null;
                                                return FFButtonWidget(
                                                  onPressed: () async {
                                                    if (FFAppState()
                                                            .RoleSelect ==
                                                        'venue') {
                                                      final usersUpdateData =
                                                          createUsersRecordData(
                                                        displayName: functions
                                                            .joint2String(
                                                                tfFirstnameController!
                                                                    .text,
                                                                tfLastnameController!
                                                                    .text),
                                                        firstName:
                                                            tfFirstnameController!
                                                                .text,
                                                        lastName:
                                                            tfLastnameController!
                                                                .text,
                                                        city: createCityStruct(
                                                          cityRef:
                                                              btnSignupCityRecord!
                                                                  .reference,
                                                          name:
                                                              btnSignupCityRecord!
                                                                  .name,
                                                          clearUnsetFields:
                                                              false,
                                                        ),
                                                        role: FFAppState()
                                                            .RoleSelect,
                                                        venue:
                                                            createVenueStruct(
                                                          name: 'Default Venue',
                                                          clearUnsetFields:
                                                              false,
                                                        ),
                                                      );
                                                      await currentUserReference!
                                                          .update(
                                                              usersUpdateData);
                                                    } else {
                                                      final usersUpdateData =
                                                          createUsersRecordData(
                                                        displayName: functions
                                                            .joint2String(
                                                                tfFirstnameController!
                                                                    .text,
                                                                tfLastnameController!
                                                                    .text),
                                                        firstName:
                                                            tfFirstnameController!
                                                                .text,
                                                        lastName:
                                                            tfLastnameController!
                                                                .text,
                                                        city: createCityStruct(
                                                          cityRef:
                                                              btnSignupCityRecord!
                                                                  .reference,
                                                          name:
                                                              btnSignupCityRecord!
                                                                  .name,
                                                          clearUnsetFields:
                                                              false,
                                                        ),
                                                        role: FFAppState()
                                                            .RoleSelect,
                                                      );
                                                      await currentUserReference!
                                                          .update(
                                                              usersUpdateData);
                                                    }

                                                    await Navigator
                                                        .pushAndRemoveUntil(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .fade,
                                                        duration: Duration(
                                                            milliseconds: 250),
                                                        reverseDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    250),
                                                        child: CheckupWidget(),
                                                      ),
                                                      (r) => false,
                                                    );
                                                  },
                                                  text: 'Submit',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 60,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Exo 2',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 16, 0, 36),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 4),
                                      child: Text(
                                        'Skip for now',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Exo 2',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
