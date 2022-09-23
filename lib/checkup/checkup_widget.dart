import '../a_home/a_home_widget.dart';
import '../add_information/add_information_widget.dart';
import '../auth/auth_util.dart';
import '../auth/firebase_user_provider.dart';
import '../create_venue_1/create_venue1_widget.dart';
import '../debug/debug_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../splash/splash_widget.dart';
import '../v_home/v_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CheckupWidget extends StatefulWidget {
  const CheckupWidget({
    Key? key,
    this.test,
  }) : super(key: key);

  final String? test;

  @override
  _CheckupWidgetState createState() => _CheckupWidgetState();
}

class _CheckupWidgetState extends State<CheckupWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        setState(() => FFAppState().debug = 'Logged in user');
        await Future.delayed(const Duration(milliseconds: 2000));
      } else {
        await Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            duration: Duration(milliseconds: 250),
            reverseDuration: Duration(milliseconds: 250),
            child: SplashWidget(),
          ),
          (r) => false,
        );
        return;
      }

      if (valueOrDefault(currentUserDocument?.role, '') != null &&
          valueOrDefault(currentUserDocument?.role, '') != '') {
        setState(() => FFAppState().debug = 'Role is set');
        await Future.delayed(const Duration(milliseconds: 1000));
        if (valueOrDefault(currentUserDocument?.role, '') == 'venue') {
          setState(() => FFAppState().debug = 'Role == venue');
          await Future.delayed(const Duration(milliseconds: 1000));
          if (currentUserDocument!.venue.venueRef != null) {
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
            await Navigator.pushAndRemoveUntil(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 250),
                reverseDuration: Duration(milliseconds: 250),
                child: CreateVenue1Widget(),
              ),
              (r) => false,
            );
            return;
          }
        } else {
          setState(() => FFAppState().debug = 'Role <> venue');
          await Future.delayed(const Duration(milliseconds: 1000));
          if (valueOrDefault(currentUserDocument?.role, '') == 'artist') {
            setState(() => FFAppState().debug = 'Role == artist');
            await Future.delayed(const Duration(milliseconds: 1000));
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
            setState(() => FFAppState().debug = 'Role == user');
            await Future.delayed(const Duration(milliseconds: 1000));
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
        setState(() => FFAppState().debug = 'Role is not set');
        await Future.delayed(const Duration(milliseconds: 1000));
        await Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            duration: Duration(milliseconds: 250),
            reverseDuration: Duration(milliseconds: 250),
            child: AddInformationWidget(),
          ),
          (r) => false,
        );
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onLongPress: () async {
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
                    child: Lottie.asset(
                      'assets/lottie_animations/music-loader.json',
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                      frameRate: FrameRate(60),
                      animate: true,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        FFAppState().debug,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
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
