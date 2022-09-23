import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../band_detail/band_detail_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BandInviteWidget extends StatefulWidget {
  const BandInviteWidget({
    Key? key,
    this.band,
    this.act,
    this.isRequest,
    this.appSetting,
  }) : super(key: key);

  final BandRecord? band;
  final ActRecord? act;
  final bool? isRequest;
  final AppSettingRecord? appSetting;

  @override
  _BandInviteWidgetState createState() => _BandInviteWidgetState();
}

class _BandInviteWidgetState extends State<BandInviteWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            duration: Duration(milliseconds: 250),
            reverseDuration: Duration(milliseconds: 250),
            child: BandDetailWidget(
              band: widget.band!.reference,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Stack(
                alignment: AlignmentDirectional(0, 0),
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: 'https://picsum.photos/seed/181/600',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedNetworkImage(
                      imageUrl: widget.band!.image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          widget.band!.name!,
                          style: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Exo 2',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            widget.band!.type!,
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional(0, 0),
              children: [
                if (!widget.isRequest!)
                  Stack(
                    alignment: AlignmentDirectional(1, 0),
                    children: [
                      if (!functions.bandInvited(widget.band!.reference,
                              widget.act!.invites!.toList()) &&
                          (widget.band!.headRef != currentUserReference))
                        FFButtonWidget(
                          onPressed: () async {
                            final actUpdateData = {
                              'invites': FieldValue.arrayUnion([
                                getActInviteFirestoreData(
                                  createActInviteStruct(
                                    dateTime: getCurrentTimestamp,
                                    act: widget.act!.reference,
                                    band: widget.band!.reference,
                                    status: 'Invited',
                                    clearUnsetFields: false,
                                  ),
                                  true,
                                )
                              ]),
                            };
                            await widget.act!.reference.update(actUpdateData);
                          },
                          text: 'Invite',
                          options: FFButtonOptions(
                            width: 60,
                            height: 32,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Exo 2',
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      if (functions.bandInvited(widget.band!.reference,
                          widget.act!.invites!.toList()))
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.check_sharp,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 18,
                          ),
                        ),
                    ],
                  ),
                if (widget.isRequest ?? true)
                  Stack(
                    alignment: AlignmentDirectional(1, 0),
                    children: [
                      if (!functions.bandRequests(
                              widget.band, widget.act!.requests!.toList()) &&
                          (widget.band!.headRef != currentUserReference))
                        FFButtonWidget(
                          onPressed: () async {
                            final actUpdateData = {
                              'invites': FieldValue.arrayUnion([
                                getActInviteFirestoreData(
                                  createActInviteStruct(
                                    dateTime: getCurrentTimestamp,
                                    act: widget.act!.reference,
                                    band: widget.band!.reference,
                                    status: 'Invited',
                                    clearUnsetFields: false,
                                  ),
                                  true,
                                )
                              ]),
                            };
                            await widget.act!.reference.update(actUpdateData);
                          },
                          text: 'Accept',
                          options: FFButtonOptions(
                            width: 60,
                            height: 32,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Exo 2',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      if (functions.bandRequests(
                          widget.band, widget.act!.requests!.toList()))
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            borderRadius: BorderRadius.circular(4),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Text(
                              'Accepted',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Exo 2',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                            ),
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
