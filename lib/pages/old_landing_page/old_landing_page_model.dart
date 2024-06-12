import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'old_landing_page_widget.dart' show OldLandingPageWidget;
import 'package:flutter/material.dart';

class OldLandingPageModel extends FlutterFlowModel<OldLandingPageWidget> {
  ///  Local state fields for this page.

  bool enableConversations = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Conversations by User)] action in OldLandingPage widget.
  ApiCallResponse? getConvoByUserLoad;
  // Stores action output result for [Backend Call - API (Get Tours)] action in OldLandingPage widget.
  ApiCallResponse? apiResultn00;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
