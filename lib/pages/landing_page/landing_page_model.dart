import '/backend/api_requests/api_calls.dart';
import '/components/expanding_f_a_b/expanding_f_a_b_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:flutter/material.dart';

class LandingPageModel extends FlutterFlowModel<LandingPageWidget> {
  ///  Local state fields for this page.

  bool convoButtonFlag = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Conversations by User)] action in LandingPage widget.
  ApiCallResponse? getConvoByUserLoad;
  // Stores action output result for [Backend Call - API (Get Tours)] action in LandingPage widget.
  ApiCallResponse? apiResultn00;
  // Stores action output result for [Backend Call - API (Get User Tours)] action in LandingPage widget.
  ApiCallResponse? apiResultgwr;
  // Model for expandingFAB component.
  late ExpandingFABModel expandingFABModel;

  @override
  void initState(BuildContext context) {
    expandingFABModel = createModel(context, () => ExpandingFABModel());
  }

  @override
  void dispose() {
    expandingFABModel.dispose();
  }
}
