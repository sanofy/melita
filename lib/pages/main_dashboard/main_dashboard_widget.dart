import '/components/curved_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'main_dashboard_model.dart';
export 'main_dashboard_model.dart';

class MainDashboardWidget extends StatefulWidget {
  const MainDashboardWidget({super.key});

  @override
  State<MainDashboardWidget> createState() => _MainDashboardWidgetState();
}

class _MainDashboardWidgetState extends State<MainDashboardWidget>
    with TickerProviderStateMixin {
  late MainDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainDashboardModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2000.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 80.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: Icon(
              Icons.more_vert,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
            actions: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: Icon(
                  Icons.notifications_active_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(26.0, 20.0, 24.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.wb_sunny_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        6.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'eecb219w' /* THUR 01 AUG */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Rubik',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '2abnibds' /* Hi,  */,
                                        ),
                                        style: const TextStyle(),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '0zfxr3xr' /* Anthony */,
                                        ),
                                        style: const TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Profile');
                                },
                                child: Container(
                                  width: 48.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        'https://images.unsplash.com/photo-1604004215402-e0be233f39be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                                      ).image,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                              Container(
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation1']!),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 34.0, 24.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('Routines');
                        },
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                const Color(0xFFEDF4F3)
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(0.0, -1.0),
                              end: const AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        CircularPercentIndicator(
                                          percent: 0.15,
                                          radius: 30.0,
                                          lineWidth: 4.0,
                                          animation: true,
                                          animateFromLastPercent: true,
                                          progressColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.spa_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'ves46rd3' /* My routines */,
                                                    ),
                                                    style: const TextStyle(),
                                                  ),
                                                  const TextSpan(
                                                    text: '',
                                                    style: TextStyle(),
                                                  ),
                                                  const TextSpan(
                                                    text: '',
                                                    style: TextStyle(),
                                                  ),
                                                  const TextSpan(
                                                    text: '',
                                                    style: TextStyle(),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 6.0, 10.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ja3obmm5' /* Manage your routine, generate ... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 24.0,
                                      borderWidth: 1.0,
                                      buttonSize: 36.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      icon: Icon(
                                        Icons.navigate_next_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 19.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('Routines');
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation2']!),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(48.0, 14.0, 48.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Screenshot_15-11-2024_172535_-removebg-preview.png',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/file.png',
                          width: 55.0,
                          height: 55.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Screenshot_15-11-2024_172555_-removebg-preview.png',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(26.0, 8.0, 26.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Routines');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'fhtsc931' /* Today's Routine */,
                                ),
                                style: const TextStyle(),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'k0jasow4' /*  */,
                                ),
                                style: const TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'u1qc18v8' /* view all > */,
                                ),
                                style: const TextStyle(),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  '2df9p9p2' /*  */,
                                ),
                                style: const TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Routines');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 116.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(14.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 64.0,
                              height: 96.0,
                              decoration: BoxDecoration(
                                color: const Color(0x007165E3),
                                borderRadius: BorderRadius.circular(48.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'qk6m10g4' /* MON */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.4,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00F5F6FA),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'mitgp9l8' /* 11 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 64.0,
                              height: 96.0,
                              decoration: BoxDecoration(
                                color: const Color(0x007165E3),
                                borderRadius: BorderRadius.circular(48.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'fztihl84' /* TUE */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.4,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00F5F6FA),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '3zu509l0' /* 12 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 64.0,
                              height: 96.0,
                              decoration: BoxDecoration(
                                color: const Color(0x007165E3),
                                borderRadius: BorderRadius.circular(48.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'mqomizpw' /* WED */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.4,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00F5F6FA),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'cfoslsuh' /* 13 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 64.0,
                              height: 96.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ktv737r1' /* THU */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.4,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ziued7vt' /* 14 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 64.0,
                              height: 96.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondary,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'kepqf25i' /* FRI */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16.0,
                                            letterSpacing: 0.4,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00F5F6FA),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'e3n91aja' /* 15 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 64.0,
                              height: 96.0,
                              decoration: BoxDecoration(
                                color: const Color(0x007165E3),
                                borderRadius: BorderRadius.circular(48.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'z6rf315h' /* SAT */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.4,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00F5F6FA),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'j5w8rboe' /* 15 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 64.0,
                              height: 96.0,
                              decoration: BoxDecoration(
                                color: const Color(0x007165E3),
                                borderRadius: BorderRadius.circular(48.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '7zcv38ku' /* SUNN */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.4,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                    Container(
                                      width: 36.0,
                                      height: 36.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00F5F6FA),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '3ofmfy3t' /* 16 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                            ),
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
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation3']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Gym.gif',
                    width: 350.0,
                    height: 180.0,
                    fit: BoxFit.fitHeight,
                    alignment: const Alignment(0.0, 0.0),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                  child: wrapWithModel(
                    model: _model.curvedNavBarModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: const CurvedNavBarWidget(
                      pageIndex: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
