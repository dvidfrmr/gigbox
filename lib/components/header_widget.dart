import '../a_home/a_home_widget.dart';
import '../auth/auth_util.dart';
import '../debug/debug_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../v_home/v_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    Key? key,
    this.title,
    this.subPage,
    this.backToHome,
    this.background,
    this.showLogoOnTitle,
    this.noBack,
  }) : super(key: key);

  final String? title;
  final bool? subPage;
  final bool? backToHome;
  final Color? background;
  final bool? showLogoOnTitle;
  final bool? noBack;

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      child: Stack(
        children: [
          if (!widget.subPage!)
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: widget.background,
              ),
              alignment: AlignmentDirectional(0, 1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 5,
                      borderWidth: 1,
                      buttonSize: 45,
                      icon: Icon(
                        FFIcons.khamburger,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 18,
                      ),
                      onPressed: () {
                        print('back pressed ...');
                      },
                    ),
                    InkWell(
                      onTap: () async {
                        await signOut();
                        await Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            duration: Duration(milliseconds: 250),
                            reverseDuration: Duration(milliseconds: 250),
                            child: DebugWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/gigbox_logo_1.svg',
                        width: 45,
                        height: 45,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 5,
                          borderWidth: 1,
                          buttonSize: 45,
                          icon: Icon(
                            FFIcons.kbell,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 18,
                          ),
                          onPressed: () {
                            print('notification pressed ...');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 45,
                          icon: Icon(
                            Icons.undo,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 18,
                          ),
                          onPressed: () async {
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
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 45,
                          icon: Icon(
                            Icons.api,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 18,
                          ),
                          onPressed: () async {
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
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 45,
                          icon: Icon(
                            Icons.threesixty,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            size: 18,
                          ),
                          onPressed: () async {
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
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          if (widget.subPage ?? true)
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: widget.background,
              ),
              alignment: AlignmentDirectional(0, 1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 45,
                      child: Stack(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0x80FFFFFF), Color(0x1AFFFFFF)],
                                stops: [0, 1],
                                begin: AlignmentDirectional(1, 0),
                                end: AlignmentDirectional(-1, 0),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Visibility(
                              visible: !widget.noBack!,
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 100,
                                borderWidth: 1,
                                buttonSize: 45,
                                icon: Icon(
                                  FFIcons.karrowLeft,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24,
                                ),
                                onPressed: () async {
                                  if (widget.backToHome!) {
                                    await Navigator.pushAndRemoveUntil(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 250),
                                        reverseDuration:
                                            Duration(milliseconds: 250),
                                        child: HomePageWidget(),
                                      ),
                                      (r) => false,
                                    );
                                  } else {
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        if (!widget.showLogoOnTitle!)
                          Text(
                            widget.title!,
                            style: FlutterFlowTheme.of(context).subtitle1,
                          ),
                        if (widget.showLogoOnTitle ?? true)
                          Image.asset(
                            'assets/images/gigbox_logo-01.png',
                            width: 45,
                            height: 45,
                            fit: BoxFit.contain,
                          ),
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
