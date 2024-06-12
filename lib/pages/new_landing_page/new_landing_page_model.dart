import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_landing_page_widget.dart' show NewLandingPageWidget;
import 'package:flutter/material.dart';

class NewLandingPageModel extends FlutterFlowModel<NewLandingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in ListTile widget.
  ApiCallResponse? apiResult42z;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
