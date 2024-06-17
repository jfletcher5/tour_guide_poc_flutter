import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tour_admin_widget.dart' show TourAdminWidget;
import 'package:flutter/material.dart';

class TourAdminModel extends FlutterFlowModel<TourAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Tours)] action in tourAdmin widget.
  ApiCallResponse? apiResultm6b;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
