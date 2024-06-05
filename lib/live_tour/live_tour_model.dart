import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'live_tour_widget.dart' show LiveTourWidget;
import 'package:flutter/material.dart';

class LiveTourModel extends FlutterFlowModel<LiveTourWidget> {
  ///  Local state fields for this page.

  String? messages;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in LiveTour widget.
  ApiCallResponse? chatMessages;
  // State field(s) for chatInput widget.
  FocusNode? chatInputFocusNode;
  TextEditingController? chatInputTextController;
  String? Function(BuildContext, String?)? chatInputTextControllerValidator;
  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in Button widget.
  ApiCallResponse? apiResultpct;
  // Stores action output result for [Backend Call - API (Add New Message)] action in Button widget.
  ApiCallResponse? apiResult8ke;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    chatInputFocusNode?.dispose();
    chatInputTextController?.dispose();
  }
}
