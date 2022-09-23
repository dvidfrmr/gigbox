import '../backend/backend.dart';
import '../components/act_lineup_card_widget.dart';
import '../components/empty_icon_widget.dart';
import '../components/header_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventLineupWidget extends StatefulWidget {
  const EventLineupWidget({
    Key? key,
    this.event,
  }) : super(key: key);

  final DocumentReference? event;

  @override
  _EventLineupWidgetState createState() => _EventLineupWidgetState();
}

class _EventLineupWidgetState extends State<EventLineupWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 100, 20, 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Event Lineup',
                                style: FlutterFlowTheme.of(context).title3,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 10, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 6, 0),
                                  child: Text(
                                    'Add lAct',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Exo 2',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                  ),
                                ),
                                Icon(
                                  FFIcons.kplus,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  StreamBuilder<List<ActRecord>>(
                    stream: queryActRecord(
                      parent: widget.event,
                    ),
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
                      List<ActRecord> listViewActRecordList = snapshot.data!;
                      if (listViewActRecordList.isEmpty) {
                        return Container(
                          height: 300,
                          child: EmptyIconWidget(
                            icon: Icon(
                              FFIcons.kmic,
                              color: FlutterFlowTheme.of(context).lightGray,
                              size: 75,
                            ),
                            text: 'Your event has no artists at the moment.',
                          ),
                        );
                      }
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewActRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewActRecord =
                              listViewActRecordList[listViewIndex];
                          return ActLineupCardWidget(
                            act: listViewActRecord,
                          );
                        },
                      );
                    },
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
                noBack: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
