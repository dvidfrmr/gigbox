import '../a_home/a_home_widget.dart';
import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../v_home/v_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    Key? key,
    this.activeItem,
  }) : super(key: key);

  final String? activeItem;

  @override
  _NavbarWidgetState createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 88,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 88,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            alignment: AlignmentDirectional(0, -1),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (widget.activeItem != 'home') {
                        if (valueOrDefault(currentUserDocument?.role, '') ==
                            'venue') {
                          await Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 250),
                              reverseDuration: Duration(milliseconds: 250),
                              child: VHomeWidget(),
                            ),
                            (r) => false,
                          );
                          return;
                        } else {
                          if (valueOrDefault(currentUserDocument?.role, '') ==
                              'artist') {
                            await Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 250),
                                reverseDuration: Duration(milliseconds: 250),
                                child: AHomeWidget(),
                              ),
                              (r) => false,
                            );
                            return;
                          } else {
                            await Navigator.pushAndRemoveUntil(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 250),
                                reverseDuration: Duration(milliseconds: 250),
                                child: HomePageWidget(),
                              ),
                              (r) => false,
                            );
                            return;
                          }
                        }
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 75,
                      decoration: BoxDecoration(),
                      child: Stack(
                        alignment: AlignmentDirectional(0, 0),
                        children: [
                          if (widget.activeItem != 'home')
                            Icon(
                              FFIcons.khome,
                              color: FlutterFlowTheme.of(context).lightGray,
                              size: 24,
                            ),
                          if (widget.activeItem == 'home')
                            Icon(
                              FFIcons.khome,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (widget.activeItem != 'event') {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 250),
                            reverseDuration: Duration(milliseconds: 250),
                            child: HomePageWidget(),
                          ),
                          (r) => false,
                        );
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 75,
                      decoration: BoxDecoration(),
                      child: Stack(
                        alignment: AlignmentDirectional(0, 0),
                        children: [
                          if (widget.activeItem != 'event')
                            Icon(
                              FFIcons.kgigRequest,
                              color: FlutterFlowTheme.of(context).lightGray,
                              size: 24,
                            ),
                          if (widget.activeItem == 'event')
                            Icon(
                              FFIcons.kgigRequest,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (widget.activeItem != 'gigs') {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 250),
                            reverseDuration: Duration(milliseconds: 250),
                            child: HomePageWidget(),
                          ),
                          (r) => false,
                        );
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 75,
                      decoration: BoxDecoration(),
                      child: Stack(
                        alignment: AlignmentDirectional(0, 0),
                        children: [
                          if (widget.activeItem != 'gigs')
                            Icon(
                              FFIcons.kcalendar,
                              color: FlutterFlowTheme.of(context).lightGray,
                              size: 24,
                            ),
                          if (widget.activeItem == 'gigs')
                            Icon(
                              FFIcons.kcalendar,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (widget.activeItem != 'artist') {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 250),
                            reverseDuration: Duration(milliseconds: 250),
                            child: HomePageWidget(),
                          ),
                          (r) => false,
                        );
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 75,
                      decoration: BoxDecoration(),
                      child: Stack(
                        alignment: AlignmentDirectional(0, 0),
                        children: [
                          if (widget.activeItem != 'artist')
                            Icon(
                              FFIcons.kartist,
                              color: FlutterFlowTheme.of(context).lightGray,
                              size: 24,
                            ),
                          if (widget.activeItem == 'artist')
                            Icon(
                              FFIcons.kartist,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (widget.activeItem != 'venue') {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 250),
                            reverseDuration: Duration(milliseconds: 250),
                            child: HomePageWidget(),
                          ),
                          (r) => false,
                        );
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 75,
                      decoration: BoxDecoration(),
                      child: Stack(
                        alignment: AlignmentDirectional(0, 0),
                        children: [
                          if (widget.activeItem != 'venue')
                            Icon(
                              FFIcons.kvenue,
                              color: FlutterFlowTheme.of(context).lightGray,
                              size: 24,
                            ),
                          if (widget.activeItem == 'venue')
                            Icon(
                              FFIcons.kvenue,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (widget.activeItem != 'chat') {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 250),
                            reverseDuration: Duration(milliseconds: 250),
                            child: HomePageWidget(),
                          ),
                          (r) => false,
                        );
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 75,
                      decoration: BoxDecoration(),
                      child: Stack(
                        alignment: AlignmentDirectional(0, 0),
                        children: [
                          if (widget.activeItem != 'chat')
                            Icon(
                              FFIcons.kchat,
                              color: FlutterFlowTheme.of(context).lightGray,
                              size: 24,
                            ),
                          if (widget.activeItem == 'chat')
                            Icon(
                              FFIcons.kchat,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      if (widget.activeItem != 'profile') {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 250),
                            reverseDuration: Duration(milliseconds: 250),
                            child: HomePageWidget(),
                          ),
                          (r) => false,
                        );
                      }
                    },
                    child: Container(
                      width: 100,
                      height: 75,
                      decoration: BoxDecoration(),
                      child: Stack(
                        alignment: AlignmentDirectional(0, 0),
                        children: [
                          if (widget.activeItem != 'profile')
                            Icon(
                              FFIcons.kprofile,
                              color: FlutterFlowTheme.of(context).lightGray,
                              size: 24,
                            ),
                          if (widget.activeItem == 'profile')
                            Icon(
                              FFIcons.kprofile,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
