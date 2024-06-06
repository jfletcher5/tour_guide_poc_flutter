import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'live_tour_widget.dart' show LiveTourWidget;
import 'package:flutter/material.dart';

class LiveTourModel extends FlutterFlowModel<LiveTourWidget> {
  ///  Local state fields for this page.

  String? aiMessages;

  String? humanMessage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in LiveTour widget.
  ApiCallResponse? chatMessagesLoad;
  // State field(s) for chatInput widget.
  FocusNode? chatInputFocusNode;
  TextEditingController? chatInputTextController;
  String? Function(BuildContext, String?)? chatInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in Button widget.
  ApiCallResponse? chatMessagesRefresh;
  // Stores action output result for [Backend Call - API (Add New Message)] action in Button widget.
  ApiCallResponse? apiResult8ke;
  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in Button widget.
  ApiCallResponse? chatMessagesNew;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    chatInputFocusNode?.dispose();
    chatInputTextController?.dispose();
  }

  /// Action blocks.
  Future refresh(BuildContext context) async {}
}
