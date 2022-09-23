import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddLinksWidget extends StatefulWidget {
  const AddLinksWidget({
    Key? key,
    this.venue,
  }) : super(key: key);

  final VenueRecord? venue;

  @override
  _AddLinksWidgetState createState() => _AddLinksWidgetState();
}

class _AddLinksWidgetState extends State<AddLinksWidget> {
  String? ddTypeValue;
  TextEditingController? tfUrlController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    tfUrlController = TextEditingController();
  }

  @override
  void dispose() {
    tfUrlController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      alignment: AlignmentDirectional(0, 1),
      child: Container(
        width: double.infinity,
        height: 460,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional(0, -1),
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Type in your links to web and social media',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Exo 2',
                                          fontSize: 15,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Form(
                            key: formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: FutureBuilder<
                                              List<SocialLinksRecord>>(
                                            future:
                                                querySocialLinksRecordOnce(),
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
                                              List<SocialLinksRecord>
                                                  ddTypeSocialLinksRecordList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown(
                                                options:
                                                    ddTypeSocialLinksRecordList
                                                        .map((e) => e.name!)
                                                        .toList()
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () => ddTypeValue = val),
                                                width: 180,
                                                height: 55,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Exo 2',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 13,
                                                        ),
                                                hintText: 'Type',
                                                fillColor: Colors.white,
                                                elevation: 2,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .lightGray,
                                                borderWidth: 0,
                                                borderRadius: 5,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(16, 4, 16, 4),
                                                hidesUnderline: true,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: tfUrlController,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Input URL',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Exo 2',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 13,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lightGray,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lightGray,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                          keyboardType: TextInputType.url,
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return 'Field is required';
                                            }

                                            if (!RegExp(
                                                    kTextValidatorWebsiteRegex)
                                                .hasMatch(val)) {
                                              return 'Put a valid url.';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Note: Url links must begin with \"http://\" or \"https://\"',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Exo 2',
                                          color:
                                              FlutterFlowTheme.of(context).gray,
                                          fontSize: 13,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 36),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: StreamBuilder<List<SocialLinksRecord>>(
                                    stream: querySocialLinksRecord(
                                      queryBuilder: (socialLinksRecord) =>
                                          socialLinksRecord.where('name',
                                              isEqualTo: ddTypeValue),
                                      singleRecord: true,
                                    ),
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
                                      List<SocialLinksRecord>
                                          btnSignupSocialLinksRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final btnSignupSocialLinksRecord =
                                          btnSignupSocialLinksRecordList
                                                  .isNotEmpty
                                              ? btnSignupSocialLinksRecordList
                                                  .first
                                              : null;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          if (formKey.currentState == null ||
                                              !formKey.currentState!
                                                  .validate()) {
                                            return;
                                          }

                                          if (ddTypeValue == null) {
                                            return;
                                          }

                                          final venueUpdateData = {
                                            'socials': FieldValue.arrayUnion([
                                              getSocialFirestoreData(
                                                createSocialStruct(
                                                  name:
                                                      btnSignupSocialLinksRecord!
                                                          .name,
                                                  url: tfUrlController!.text,
                                                  icon:
                                                      btnSignupSocialLinksRecord!
                                                          .icon,
                                                  clearUnsetFields: false,
                                                ),
                                                true,
                                              )
                                            ]),
                                          };
                                          await widget.venue!.reference
                                              .update(venueUpdateData);
                                          Navigator.pop(context);
                                        },
                                        text: 'Add link',
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 60,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Exo 2',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        'Add Links',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 8,
                      borderWidth: 1,
                      buttonSize: 50,
                      fillColor: FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        FFIcons.kclose,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
