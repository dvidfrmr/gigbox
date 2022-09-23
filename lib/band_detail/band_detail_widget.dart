import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/empty_state_widget.dart';
import '../components/event_card_widget.dart';
import '../components/header_widget.dart';
import '../components/user_card_v_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BandDetailWidget extends StatefulWidget {
  const BandDetailWidget({
    Key? key,
    this.band,
    this.act,
  }) : super(key: key);

  final DocumentReference? band;
  final ActRecord? act;

  @override
  _BandDetailWidgetState createState() => _BandDetailWidgetState();
}

class _BandDetailWidgetState extends State<BandDetailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BandRecord>(
      stream: BandRecord.getDocument(widget.band!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final bandDetailBandRecord = snapshot.data!;
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 36),
                            child: Stack(
                              children: [
                                Image.network(
                                  valueOrDefault<String>(
                                    bandDetailBandRecord.image,
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/gig-box-jssgcd/assets/oix38jfxui54/img-placeholder.jpeg',
                                  ),
                                  width: double.infinity,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 120, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 4,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              bandDetailBandRecord.image,
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/gig-box-jssgcd/assets/itex77kqgjnl/avatar.jpeg',
                                            ),
                                            width: 90,
                                            height: 90,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 80, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 4, 0),
                                                      child: Text(
                                                        bandDetailBandRecord
                                                            .name!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle2
                                                                .override(
                                                                  fontFamily:
                                                                      'Exo 2',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      FFIcons.kartist,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 14,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 0, 0, 0),
                                                      child: Text(
                                                        bandDetailBandRecord
                                                            .type!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.favorite_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 14,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 0, 0, 0),
                                                      child: Text(
                                                        formatNumber(
                                                          bandDetailBandRecord
                                                              .followersListRef!
                                                              .toList()
                                                              .length,
                                                          formatType: FormatType
                                                              .compact,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Exo 2',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 0, 0, 0),
                                                      child: Text(
                                                        'Followers',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Exo 2',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 8, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (bandDetailBandRecord
                                                                .followersListRef!
                                                                .toList()
                                                                .contains(
                                                                    currentUserReference) ==
                                                            false)
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              final bandUpdateData =
                                                                  {
                                                                'followers_list_ref':
                                                                    FieldValue
                                                                        .arrayRemove([
                                                                  currentUserReference
                                                                ]),
                                                              };
                                                              await widget.band!
                                                                  .update(
                                                                      bandUpdateData);
                                                            },
                                                            text: 'Contact',
                                                            icon: Icon(
                                                              FFIcons.kchat,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              size: 16,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 95,
                                                              height: 30,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Exo 2',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                    Stack(
                                                      children: [
                                                        if (!bandDetailBandRecord
                                                            .followersListRef!
                                                            .toList()
                                                            .contains(
                                                                currentUserReference))
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              final bandUpdateData =
                                                                  {
                                                                'followers_list_ref':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  currentUserReference
                                                                ]),
                                                              };
                                                              await widget.band!
                                                                  .update(
                                                                      bandUpdateData);
                                                            },
                                                            text: 'Follow',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 70,
                                                              height: 30,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Exo 2',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            13,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4),
                                                            ),
                                                          ),
                                                        if (bandDetailBandRecord
                                                            .followersListRef!
                                                            .toList()
                                                            .contains(
                                                                currentUserReference))
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              final bandUpdateData =
                                                                  {
                                                                'followers_list_ref':
                                                                    FieldValue
                                                                        .arrayRemove([
                                                                  currentUserReference
                                                                ]),
                                                              };
                                                              await widget.band!
                                                                  .update(
                                                                      bandUpdateData);
                                                            },
                                                            text: 'Unfollow',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 80,
                                                              height: 30,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Exo 2',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            13,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4),
                                                            ),
                                                          ),
                                                      ],
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
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Links',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Exo 2',
                                                fontSize: 15,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Builder(
                                      builder: (context) {
                                        final social = bandDetailBandRecord
                                            .socials!
                                            .toList();
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(social.length,
                                              (socialIndex) {
                                            final socialItem =
                                                social[socialIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 8, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  await launchURL(
                                                      socialItem.url!);
                                                },
                                                child: CachedNetworkImage(
                                                  imageUrl:
                                                      valueOrDefault<String>(
                                                    socialItem.icon,
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/gig-box-jssgcd/assets/xvndxcvhn7ii/Vector.png',
                                                  ),
                                                  width: 35,
                                                  height: 35,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 50),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 24, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'About',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Exo 2',
                                                          fontSize: 15,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 6, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        bandDetailBandRecord
                                                            .description!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
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
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 24, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Members',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Exo 2',
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 16, 0, 0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 100,
                                          decoration: BoxDecoration(),
                                          child: Builder(
                                            builder: (context) {
                                              final artist =
                                                  bandDetailBandRecord
                                                      .artistListRef!
                                                      .toList();
                                              if (artist.isEmpty) {
                                                return EmptyStateWidget();
                                              }
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: artist.length,
                                                itemBuilder:
                                                    (context, artistIndex) {
                                                  final artistItem =
                                                      artist[artistIndex];
                                                  return FutureBuilder<
                                                      UsersRecord>(
                                                    future: UsersRecord
                                                        .getDocumentOnce(
                                                            artistItem),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final userCardVUsersRecord =
                                                          snapshot.data!;
                                                      return UserCardVWidget(
                                                        user:
                                                            userCardVUsersRecord,
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 24),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 24, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Upcoming Events',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Exo 2',
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        FutureBuilder<List<EventRecord>>(
                                          future: queryEventRecordOnce(
                                            queryBuilder: (eventRecord) =>
                                                eventRecord.where('date_time',
                                                    isGreaterThan:
                                                        getCurrentTimestamp),
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<EventRecord>
                                                listViewEventRecordList =
                                                snapshot.data!;
                                            if (listViewEventRecordList
                                                .isEmpty) {
                                              return EmptyStateWidget();
                                            }
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: listViewEventRecordList
                                                  .length,
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewEventRecord =
                                                    listViewEventRecordList[
                                                        listViewIndex];
                                                return EventCardWidget(
                                                  event: listViewEventRecord,
                                                );
                                              },
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
                        ],
                      ),
                    ],
                  ),
                ),
                HeaderWidget(
                  title: ' ',
                  subPage: true,
                  backToHome: false,
                  background: Color(0x00FFFFFF),
                  showLogoOnTitle: true,
                  noBack: false,
                ),
                if ((widget.act != null) &&
                    (bandDetailBandRecord.headRef != currentUserReference))
                  Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      alignment: AlignmentDirectional(0, -1),
                      child: Container(
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (!functions.bandInvited(
                                    widget.band, widget.act!.invites!.toList()))
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 8, 20, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          final actUpdateData = {
                                            'invites': FieldValue.arrayUnion([
                                              getActInviteFirestoreData(
                                                createActInviteStruct(
                                                  dateTime: getCurrentTimestamp,
                                                  act: widget.act!.reference,
                                                  band: widget.band,
                                                  status: 'Invited',
                                                  clearUnsetFields: false,
                                                ),
                                                true,
                                              )
                                            ]),
                                          };
                                          await widget.act!.reference
                                              .update(actUpdateData);
                                          Navigator.pop(context);
                                        },
                                        text: 'Invite to Lineup',
                                        options: FFButtonOptions(
                                          width: 100,
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
                                      ),
                                    ),
                                  ),
                                if (functions.bandInvited(
                                    widget.band, widget.act!.invites!.toList()))
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 8, 20, 0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('invited pressed ...');
                                        },
                                        text: 'Invited',
                                        options: FFButtonOptions(
                                          width: 100,
                                          height: 60,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Exo 2',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (!functions.bandRequests(
                                    bandDetailBandRecord,
                                    widget.act!.requests!.toList()))
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 8, 20, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          final actUpdateData =
                                              createActRecordData(
                                            acceptedBand: createBandStruct(
                                              name: bandDetailBandRecord.name,
                                              bandRef: bandDetailBandRecord
                                                  .reference,
                                              image: bandDetailBandRecord.image,
                                              type: bandDetailBandRecord.type,
                                              clearUnsetFields: false,
                                            ),
                                          );
                                          await widget.act!.reference
                                              .update(actUpdateData);
                                          Navigator.pop(context);
                                        },
                                        text: 'Accept Request',
                                        options: FFButtonOptions(
                                          width: 100,
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
                                      ),
                                    ),
                                  ),
                                if (widget.act!.acceptedBand.bandRef ==
                                    widget.band)
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 8, 20, 0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Accepted pressed ...');
                                        },
                                        text: 'Accepted',
                                        options: FFButtonOptions(
                                          width: 100,
                                          height: 60,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Exo 2',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
