import '../a_home/a_home_widget.dart';
import '../add_information/add_information_widget.dart';
import '../auth/auth_util.dart';
import '../auth/firebase_user_provider.dart';
import '../backend/backend.dart';
import '../create_venue_1/create_venue1_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../splash/splash_widget.dart';
import '../v_home/v_home_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CheckupWidget extends StatefulWidget {
  const CheckupWidget({
    Key? key,
    this.appSetting,
  }) : super(key: key);

  final AppSettingRecord? appSetting;

  @override
  _CheckupWidgetState createState() => _CheckupWidgetState();
}

class _CheckupWidgetState extends State<CheckupWidget> {
  AppSettingRecord? appSettingDoc;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      appSettingDoc = await actions.getAppSetting();
      if (appSettingDoc!.reference != null) {
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
              child: SplashWidget(
                appSetting: appSettingDoc,
              ),
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
                  child: VHomeWidget(
                    appSetting: appSettingDoc,
                  ),
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
                  child: CreateVenue1Widget(
                    appSetting: appSettingDoc,
                  ),
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
                  child: AHomeWidget(
                    appSetting: appSettingDoc,
                  ),
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
                  child: HomePageWidget(
                    appSetting: appSettingDoc,
                  ),
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
              child: AddInformationWidget(
                appSetting: appSettingDoc,
              ),
            ),
            (r) => false,
          );
          return;
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Can not retrive the app setting!',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 15,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: Colors.black,
            action: SnackBarAction(
              label: 'Retry >',
              textColor: FlutterFlowTheme.of(context).tertiaryColor,
              onPressed: () async {
                await Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 250),
                    reverseDuration: Duration(milliseconds: 250),
                    child: CheckupWidget(),
                  ),
                  (r) => false,
                );
              },
            ),
          ),
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
                          child: SplashWidget(),
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
