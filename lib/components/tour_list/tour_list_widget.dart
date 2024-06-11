import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tour_list_model.dart';
export 'tour_list_model.dart';

class TourListWidget extends StatefulWidget {
  const TourListWidget({super.key});

  @override
  State<TourListWidget> createState() => _TourListWidgetState();
}

class _TourListWidgetState extends State<TourListWidget> {
  late TourListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TourListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primary,
          ),
        ),
        child: MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          onEnter: ((event) async {
            setState(() => _model.mouseRegionHovered = true);
          }),
          onExit: ((event) async {
            setState(() => _model.mouseRegionHovered = false);
          }),
          child: Builder(
            builder: (context) {
              final tourList = FFAppState().appTourListJSON.toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: tourList.length,
                itemBuilder: (context, tourListIndex) {
                  final tourListItem = tourList[tourListIndex];
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().appActiveTourName = getJsonField(
                        tourListItem,
                        r'''$.tourName''',
                      ).toString();
                      FFAppState().appActiveTourID = getJsonField(
                        tourListItem,
                        r'''$.tourID''',
                      ).toString();
                      setState(() {});
                      _model.apiResult42z =
                          await ChatServicesGroup.getConversationsCall.call(
                        userID: currentUserUid,
                        tourID: getJsonField(
                          tourListItem,
                          r'''$.tourID''',
                        ).toString(),
                      );
                      if ((_model.apiResult42z?.succeeded ?? true)) {
                        FFAppState().appConversations =
                            (_model.apiResult42z?.jsonBody ?? '');
                        setState(() {});
                      }

                      context.pushNamed('testpageConvos');

                      setState(() {});
                    },
                    child: ListTile(
                      title: Text(
                        getJsonField(
                          tourListItem,
                          r'''$.tourName''',
                        ).toString(),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              letterSpacing: 0.0,
                            ),
                      ),
                      subtitle: Text(
                        getJsonField(
                          tourListItem,
                          r'''$.tourID''',
                        ).toString(),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
