import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'melita_intelligence_model.dart';
export 'melita_intelligence_model.dart';

class MelitaIntelligenceWidget extends StatefulWidget {
  const MelitaIntelligenceWidget({super.key});

  @override
  State<MelitaIntelligenceWidget> createState() =>
      _MelitaIntelligenceWidgetState();
}

class _MelitaIntelligenceWidgetState extends State<MelitaIntelligenceWidget> {
  late MelitaIntelligenceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MelitaIntelligenceModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(
            maxWidth: 570.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: const Color(0xFFE0E3E7),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 34.0, 24.0, 4.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    'assets/images/Untitled_design__1_-removebg-preview.png',
                    width: 60.0,
                    height: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'kroouk7d' /* Generate New Plan */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '5zafgm0x' /* Let Melita Intelligence create... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.goNamed('melitaAIWorking');
                        },
                        text: FFLocalizations.of(context).getText(
                          'i0scv26o' /* Generate Plan */,
                        ),
                        icon: const Icon(
                          Icons.auto_awesome_rounded,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 200.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconAlignment: IconAlignment.end,
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0x35BDE5CC),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                          hoverColor: const Color(0xFF2B16ED),
                          hoverTextColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.safePop();
                        },
                        text: FFLocalizations.of(context).getText(
                          'aw4ghqzt' /* Cancel or Later */,
                        ),
                        icon: const Icon(
                          Icons.chevron_left,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
