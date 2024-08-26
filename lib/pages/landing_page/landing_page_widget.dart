import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/expanding_f_a_b/expanding_f_a_b_widget.dart';
import '/components/new_conversation/new_conversation_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'landing_page_model.dart';
export 'landing_page_model.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({super.key});

  @override
  State<LandingPageWidget> createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget> {
  late LandingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.convoButtonFlag = false;
      setState(() {});
      await Future.wait([
        Future(() async {
          _model.getConvoByUserLoad =
              await ChatServicesGroup.getConversationsByUserCall.call(
            userID: currentUserUid,
          );

          if ((_model.getConvoByUserLoad?.succeeded ?? true)) {
            FFAppState().appConversationsJSON =
                (_model.getConvoByUserLoad?.jsonBody ?? '');
            _model.convoButtonFlag = true;
            setState(() {});
          }
        }),
        Future(() async {
          _model.apiResultn00 = await ChatServicesGroup.getToursCall.call();

          if ((_model.apiResultn00?.succeeded ?? true)) {
            FFAppState().appTourNameList = ChatServicesGroup.getToursCall
                .tourList(
                  (_model.apiResultn00?.jsonBody ?? ''),
                )!
                .toList()
                .cast<String>();
            FFAppState().appTourIDsList = ChatServicesGroup.getToursCall
                .tourIDs(
                  (_model.apiResultn00?.jsonBody ?? ''),
                )!
                .toList()
                .cast<String>();
            FFAppState().appAllToursJSON =
                (_model.apiResultn00?.jsonBody ?? '');
            setState(() {});
          }
        }),
        Future(() async {
          _model.apiResultgwr = await TourServicesGroup.getUserToursCall.call(
            userID: currentUserUid,
          );

          if ((_model.apiResultgwr?.succeeded ?? true)) {
            FFAppState().appUserTourNameList = (getJsonField(
              (_model.apiResultgwr?.jsonBody ?? ''),
              r'''$[:].tourName''',
              true,
            ) as List)
                .map<String>((s) => s.toString())
                .toList()
                .toList()
                .cast<String>();
            FFAppState().appUserTourIDList = (getJsonField(
              (_model.apiResultgwr?.jsonBody ?? ''),
              r'''$[:].tourID''',
              true,
            ) as List)
                .map<String>((s) => s.toString())
                .toList()
                .toList()
                .cast<String>();
            FFAppState().appUserAllToursJSON =
                (_model.apiResultgwr?.jsonBody ?? '');
            setState(() {});
          }
        }),
      ]);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Landing Page',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (_model.convoButtonFlag)
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'ConversationList',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                        ),
                                      },
                                    );
                                  },
                                  text: 'Go To Conversations',
                                  icon: const Icon(
                                    Icons.done,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 60.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          if (!_model.convoButtonFlag)
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'LoadingConversations...',
                                  icon: const Icon(
                                    Icons.loop,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 60.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFFEFB8A0),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          StyledDivider(
                            thickness: 2.0,
                            color: FlutterFlowTheme.of(context).primary,
                            lineStyle: DividerLineStyle.dashed,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  useSafeArea: true,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () =>
                                          FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const NewConversationWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              text: 'New Conversation',
                              icon: const Icon(
                                Icons.add,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 60.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.expandingFABModel,
                    updateCallback: () => setState(() {}),
                    child: const ExpandingFABWidget(),
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
