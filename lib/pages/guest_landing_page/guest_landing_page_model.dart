import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'guest_landing_page_widget.dart' show GuestLandingPageWidget;
import 'package:flutter/material.dart';

class GuestLandingPageModel extends FlutterFlowModel<GuestLandingPageWidget> {
  ///  Local state fields for this page.

  String? firstMessage;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Tours)] action in guestLandingPage widget.
  ApiCallResponse? apiResult57n;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - API (create uuid)] action in Button widget.
  ApiCallResponse? uuidOutput;
  // Stores action output result for [Backend Call - API (Add New Message)] action in Button widget.
  ApiCallResponse? apiResultomg;
  // Stores action output result for [Backend Call - API (Get Conversations by User)] action in Button widget.
  ApiCallResponse? apiResultdx1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
