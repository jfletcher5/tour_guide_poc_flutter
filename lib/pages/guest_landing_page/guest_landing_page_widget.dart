import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'guest_landing_page_model.dart';
export 'guest_landing_page_model.dart';

class GuestLandingPageWidget extends StatefulWidget {
  const GuestLandingPageWidget({super.key});

  @override
  State<GuestLandingPageWidget> createState() => _GuestLandingPageWidgetState();
}

class _GuestLandingPageWidgetState extends State<GuestLandingPageWidget> {
  late GuestLandingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuestLandingPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult57n = await ChatServicesGroup.getToursCall.call();

      if ((_model.apiResult57n?.succeeded ?? true)) {
        FFAppState().appTourNameList = ChatServicesGroup.getToursCall
            .tourList(
              (_model.apiResult57n?.jsonBody ?? ''),
            )!
            .toList()
            .cast<String>();
        FFAppState().appTourIDsList = ChatServicesGroup.getToursCall
            .tourIDs(
              (_model.apiResult57n?.jsonBody ?? ''),
            )!
            .toList()
            .cast<String>();
        setState(() {});
      }
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
            'Welcome to Tour Guide',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 0.0, 0.0),
                        child: Text(
                          'Enter your tour code to get started',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(
                            _model.dropDownValue ??= '',
                          ),
                          options:
                              List<String>.from(FFAppState().appTourIDsList),
                          optionLabels: FFAppState().appTourNameList,
                          onChanged: (val) async {
                            setState(() => _model.dropDownValue = val);
                            FFAppState().appActiveTourName =
                                _model.dropDownValue!;
                            setState(() {});
                          },
                          width: double.infinity,
                          height: 56.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Select a Tour',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                      const StyledDivider(
                        height: 36.0,
                        thickness: 2.0,
                        indent: 8.0,
                        endIndent: 8.0,
                        color: Color(0x8D4B39EF),
                        lineStyle: DividerLineStyle.dotted,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 24.0, 16.0, 0.0),
                          child: Text(
                            'Choose a starter question below:',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: FlutterFlowChoiceChips(
                          options: const [
                            ChipData('Hi, tell me about the tour today'),
                            ChipData('How old is this place?'),
                            ChipData('How does this work?')
                          ],
                          onChanged: (val) async {
                            setState(() =>
                                _model.choiceChipsValue = val?.firstOrNull);
                            _model.firstMessage = _model.choiceChipsValue;
                            setState(() {});
                          },
                          selectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                            iconSize: 18.0,
                            elevation: 4.0,
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).alternate,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            iconSize: 18.0,
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          chipSpacing: 12.0,
                          rowSpacing: 12.0,
                          multiselect: false,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          wrapped: true,
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 44.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                FFAppState().appActiveTourID =
                                    _model.dropDownValue!;
                                setState(() {});
                                _model.uuidOutput = await ChatServicesGroup
                                    .createUuidCall
                                    .call();

                                _model.apiResultomg = await ChatServicesGroup
                                    .addNewMessageCall
                                    .call(
                                  newMessage: _model.firstMessage,
                                  tourID: FFAppState().appActiveTourID,
                                  conversationId:
                                      (_model.uuidOutput?.jsonBody ?? '')
                                          .toString(),
                                  userID: currentUserUid,
                                  conversationName:
                                      '$currentUserDisplayName - ${FFAppState().appActiveTourName}',
                                );

                                if ((_model.apiResultomg?.succeeded ?? true)) {
                                  FFAppState().appActiveConvoID =
                                      (_model.uuidOutput?.jsonBody ?? '')
                                          .toString();
                                  FFAppState().appChatHistoryJSONList =
                                      (_model.apiResultomg?.jsonBody ?? '')
                                          .toList()
                                          .cast<dynamic>();
                                  setState(() {});
                                  if (Navigator.of(context).canPop()) {
                                    context.pop();
                                  }
                                  context.pushNamed(
                                    'chat_ai_Screen',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );

                                  _model.apiResultdx1 = await ChatServicesGroup
                                      .getConversationsByUserCall
                                      .call(
                                    userID: currentUserUid,
                                  );

                                  if ((_model.apiResultdx1?.succeeded ??
                                      true)) {
                                    FFAppState().appConversationsJSON =
                                        (_model.apiResultdx1?.jsonBody ?? '');
                                    setState(() {});
                                  }
                                }

                                setState(() {});
                              },
                              text: 'Start Conversation',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
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
                                elevation: 2.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
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
    );
  }
}
