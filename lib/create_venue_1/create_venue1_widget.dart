import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/header_widget.dart';
import '../create_venue_2/create_venue2_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import '../flutter_flow/upload_media.dart';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateVenue1Widget extends StatefulWidget {
  const CreateVenue1Widget({
    Key? key,
    this.appSetting,
  }) : super(key: key);

  final AppSettingRecord? appSetting;

  @override
  _CreateVenue1WidgetState createState() => _CreateVenue1WidgetState();
}

class _CreateVenue1WidgetState extends State<CreateVenue1Widget> {
  String uploadedFileUrl = '';
  TextEditingController? tfDescriptionController;
  TextEditingController? tfPhoneController;
  TextEditingController? tfVenuenameController;
  var placePickerValue = FFPlace();
  VenueRecord? venueCreated;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    tfDescriptionController = TextEditingController();
    tfPhoneController = TextEditingController();
    tfVenuenameController = TextEditingController();
  }

  @override
  void dispose() {
    tfDescriptionController?.dispose();
    tfPhoneController?.dispose();
    tfVenuenameController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 100, 20, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Create Your Venue Profile',
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
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 36, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 16),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Upload photos of your venue ',
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
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 0, 16),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            maxWidth: 1200.00,
                                            imageQuality: 80,
                                            allowPhoto: true,
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            final downloadUrls =
                                                (await Future.wait(selectedMedia
                                                        .map((m) async =>
                                                            await uploadData(
                                                                m.storagePath,
                                                                m.bytes))))
                                                    .where((u) => u != null)
                                                    .map((u) => u!)
                                                    .toList();
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            if (downloadUrls.length ==
                                                selectedMedia.length) {
                                              setState(() => uploadedFileUrl =
                                                  downloadUrls.first);
                                              showUploadMessage(
                                                context,
                                                'Success!',
                                              );
                                            } else {
                                              showUploadMessage(
                                                context,
                                                'Failed to upload media',
                                              );
                                              return;
                                            }
                                          }

                                          if (uploadedFileUrl != null &&
                                              uploadedFileUrl != '') {
                                            setState(() => FFAppState()
                                                .imagePaths
                                                .add(uploadedFileUrl));
                                          }
                                        },
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: FlutterFlowTheme.of(context)
                                                .gray,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                      if (FFAppState().imagePaths.length > 0)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final image = FFAppState()
                                                      .imagePaths
                                                      .toList();
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        image.length,
                                                        (imageIndex) {
                                                      final imageItem =
                                                          image[imageIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 8, 0),
                                                        child: Container(
                                                          width: 70,
                                                          height: 70,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                child:
                                                                    CachedNetworkImage(
                                                                  imageUrl:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    imageItem,
                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/gig-box-jssgcd/assets/oix38jfxui54/img-placeholder.jpeg',
                                                                  ),
                                                                  width: 100,
                                                                  height: 100,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              FlutterFlowIconButton(
                                                                borderColor: Colors
                                                                    .transparent,
                                                                borderRadius: 8,
                                                                borderWidth: 1,
                                                                buttonSize: 45,
                                                                icon: Icon(
                                                                  Icons
                                                                      .delete_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  size: 20,
                                                                ),
                                                                onPressed:
                                                                    () async {
                                                                  setState(() =>
                                                                      FFAppState()
                                                                          .imagePaths
                                                                          .remove(
                                                                              imageItem));
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
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
                                        controller: tfVenuenameController,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Name of venue',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Exo 2',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'Field is required';
                                          }

                                          return null;
                                        },
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
                                      child: FlutterFlowPlacePicker(
                                        iOSGoogleMapsApiKey:
                                            'AIzaSyA7MoZ8y7TYuEHF_fovL8eGuGRpu4udWzk',
                                        androidGoogleMapsApiKey:
                                            'AIzaSyCZhKq9o3l1rF5lTFtGoT7-o6z8kImyxXo',
                                        webGoogleMapsApiKey:
                                            'AIzaSyCbOeFvG7IhFgg6oqjMhg5f0XWkZOXRmi0',
                                        onSelect: (place) async {
                                          setState(
                                              () => placePickerValue = place);
                                        },
                                        defaultText: 'Address',
                                        icon: Icon(
                                          Icons.place,
                                          color:
                                              FlutterFlowTheme.of(context).gray,
                                          size: 16,
                                        ),
                                        buttonOptions: FFButtonOptions(
                                          width: 200,
                                          height: 55,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .gray,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                          hintText: 'Contact Number',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Exo 2',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                        controller: tfDescriptionController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Add a description for your venue.',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Exo 2',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                        maxLines: 5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 36, 0, 0),
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
                                                    text: 'Create Profile',
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 60,
                                                      color: Color(0x800156E4),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Exo 2',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  if (FFAppState()
                                                          .imagePaths
                                                          .length >
                                                      0)
                                                    FFButtonWidget(
                                                      onPressed: () async {
                                                        if (formKey.currentState ==
                                                                null ||
                                                            !formKey
                                                                .currentState!
                                                                .validate()) {
                                                          return;
                                                        }

                                                        final venueCreateData =
                                                            {
                                                          ...createVenueRecordData(
                                                            name:
                                                                tfVenuenameController!
                                                                    .text,
                                                            description:
                                                                tfDescriptionController!
                                                                    .text,
                                                            phone:
                                                                tfPhoneController!
                                                                    .text,
                                                            address:
                                                                createAddressStruct(
                                                              fullAddress:
                                                                  placePickerValue
                                                                      .address,
                                                              country:
                                                                  placePickerValue
                                                                      .country,
                                                              state:
                                                                  placePickerValue
                                                                      .state,
                                                              city:
                                                                  placePickerValue
                                                                      .city,
                                                              zip:
                                                                  placePickerValue
                                                                      .zipCode,
                                                              location:
                                                                  placePickerValue
                                                                      .latLng,
                                                              clearUnsetFields:
                                                                  false,
                                                              create: true,
                                                            ),
                                                            owner:
                                                                createUserStruct(
                                                              userRef:
                                                                  currentUserReference,
                                                              email:
                                                                  currentUserEmail,
                                                              image:
                                                                  currentUserPhoto,
                                                              displayName:
                                                                  currentUserDisplayName,
                                                              clearUnsetFields:
                                                                  false,
                                                              create: true,
                                                            ),
                                                          ),
                                                          'images': FFAppState()
                                                              .imagePaths,
                                                        };
                                                        var venueRecordReference =
                                                            VenueRecord
                                                                .collection
                                                                .doc();
                                                        await venueRecordReference
                                                            .set(
                                                                venueCreateData);
                                                        venueCreated = VenueRecord
                                                            .getDocumentFromData(
                                                                venueCreateData,
                                                                venueRecordReference);

                                                        final usersUpdateData =
                                                            createUsersRecordData(
                                                          venue:
                                                              createVenueStruct(
                                                            venueRef:
                                                                venueCreated!
                                                                    .reference,
                                                            name: venueCreated!
                                                                .name,
                                                            clearUnsetFields:
                                                                false,
                                                          ),
                                                        );
                                                        await currentUserReference!
                                                            .update(
                                                                usersUpdateData);
                                                        await Navigator.push(
                                                          context,
                                                          PageTransition(
                                                            type:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    250),
                                                            reverseDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        250),
                                                            child:
                                                                CreateVenue2Widget(
                                                              venue:
                                                                  venueCreated!
                                                                      .reference,
                                                            ),
                                                          ),
                                                        );

                                                        setState(() {});
                                                      },
                                                      text: 'Create Profile',
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 60,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Exo 2',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                ),
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -1),
              child: HeaderWidget(
                title: ' ',
                subPage: true,
                backToHome: false,
                background: FlutterFlowTheme.of(context).primaryBackground,
                showLogoOnTitle: true,
                noBack: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
