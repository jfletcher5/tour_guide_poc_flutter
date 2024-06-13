import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:flutter/material.dart';

class LandingPageModel extends FlutterFlowModel<LandingPageWidget> {
  ///  Local state fields for this page.

  bool enableConversations = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Conversations by User)] action in LandingPage widget.
  ApiCallResponse? getConvoByUserLoad;
  // Stores action output result for [Backend Call - API (Get Tours)] action in LandingPage widget.
  ApiCallResponse? apiResultn00;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
