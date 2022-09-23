import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventTileWidget extends StatefulWidget {
  const EventTileWidget({
    Key? key,
    this.event,
  }) : super(key: key);

  final EventRecord? event;

  @override
  _EventTileWidgetState createState() => _EventTileWidgetState();
}

class _EventTileWidgetState extends State<EventTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                valueOrDefault<String>(
                  widget.event!.cover,
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/gig-box-jssgcd/assets/oix38jfxui54/img-placeholder.jpeg',
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: AlignmentDirectional(0, 1),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0x3FB6B6B6),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FFIcons.kartist,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 18,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          widget.event!.venue.name!,
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Exo 2',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    widget.event!.name!,
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Exo 2',
                          fontSize: 15,
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
                      dateTimeFormat('MMMEd', widget.event!.dateTime!),
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Exo 2',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                      child: Text(
                        dateTimeFormat('jm', widget.event!.dateTime!),
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Exo 2',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      FFIcons.kvenue,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 18,
                    ),
                    Text(
                      widget.event!.address.city!,
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
