import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'testpage_widget.dart' show TestpageWidget;
import 'package:flutter/material.dart';

class TestpageModel extends FlutterFlowModel<TestpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Backend Call - API (Get Conversations)] action in ListTile widget.
  ApiCallResponse? apiResult42z;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
