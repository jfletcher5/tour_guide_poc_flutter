import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/create_conversation/create_conversation_widget.dart';
import '/components/no_convos/no_convos_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'conversation_list_model.dart';
export 'conversation_list_model.dart';

class ConversationListWidget extends StatefulWidget {
  const ConversationListWidget({super.key});

  @override
  State<ConversationListWidget> createState() => _ConversationListWidgetState();
}

class _ConversationListWidgetState extends State<ConversationListWidget> {
  late ConversationListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConversationListModel());

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              barrierColor: FlutterFlowTheme.of(context).primary,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () => _model.unfocusNode.canRequestFocus
                      ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                      : FocusScope.of(context).unfocus(),
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: const CreateConversationWidget(),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          icon: const Icon(
            Icons.add,
          ),
          elevation: 16.0,
          label: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'New',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).alternate,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_left,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'My Conversations',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.9,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final userConversations =
                                  FFAppState().appConversationsJSON.toList();
                              if (userConversations.isEmpty) {
                                return const NoConvosWidget();
                              }
                              return RefreshIndicator(
                                onRefresh: () async {
                                  _model.apiResultm6b = await ChatServicesGroup
                                      .getConversationsByUserCall
                                      .call(
                                    userID: currentUserUid,
                                  );
                                  if ((_model.apiResultm6b?.succeeded ??
                                      true)) {
                                    FFAppState().appConversationsJSON =
                                        (_model.apiResultm6b?.jsonBody ?? '');
                                    setState(() {});
                                  }
                                },
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: userConversations.length,
                                  itemBuilder:
                                      (context, userConversationsIndex) {
                                    final userConversationsItem =
                                        userConversations[
                                            userConversationsIndex];
                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().appActiveTourName =
                                                getJsonField(
                                              userConversationsItem,
                                              r'''$.tourName''',
                                            ).toString();
                                            FFAppState().appActiveTourID =
                                                getJsonField(
                                              userConversationsItem,
                                              r'''$.tourID''',
                                            ).toString();
                                            FFAppState().appActiveConvoID =
                                                getJsonField(
                                              userConversationsItem,
                                              r'''$.conversation_id''',
                                            ).toString();
                                            setState(() {});

                                            context.pushNamed('chat_ai_Screen');
                                          },
                                          child: Slidable(
                                            endActionPane: ActionPane(
                                              motion: const ScrollMotion(),
                                              extentRatio: 0.25,
                                              children: [
                                                SlidableAction(
                                                  label: 'Delete',
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .error,
                                                  icon: Icons
                                                      .delete_forever_sharp,
                                                  onPressed: (_) async {
                                                    _model.apiResultgx3 =
                                                        await ChatServicesGroup
                                                            .deleteConversationCall
                                                            .call(
                                                      userID: currentUserUid,
                                                      conversationID:
                                                          getJsonField(
                                                        userConversationsItem,
                                                        r'''$.conversation_id''',
                                                      ).toString(),
                                                    );
                                                    if ((_model.apiResultgx3
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.apiResultv7q =
                                                          await ChatServicesGroup
                                                              .getConversationsByUserCall
                                                              .call(
                                                        userID: currentUserUid,
                                                      );
                                                      if ((_model.apiResultv7q
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                                .appConversationsJSON =
                                                            (_model.apiResultv7q
                                                                    ?.jsonBody ??
                                                                '');
                                                        setState(() {});
                                                      }
                                                    }

                                                    setState(() {});
                                                  },
                                                ),
                                              ],
                                            ),
                                            child: ListTile(
                                              title: Text(
                                                getJsonField(
                                                  userConversationsItem,
                                                  r'''$.conversation_name''',
                                                )
                                                    .toString()
                                                    .maybeHandleOverflow(
                                                      maxChars: 20,
                                                      replacement: '…',
                                                    ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                              ),
                                              subtitle: Text(
                                                getJsonField(
                                                  userConversationsItem,
                                                  r'''$.tourName''',
                                                )
                                                    .toString()
                                                    .maybeHandleOverflow(
                                                      maxChars: 30,
                                                      replacement: '…',
                                                    ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.chat_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              dense: false,
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(0.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 1.0,
                                          indent: 4.0,
                                          endIndent: 4.0,
                                          color: Color(0xBA4B39EF),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
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
