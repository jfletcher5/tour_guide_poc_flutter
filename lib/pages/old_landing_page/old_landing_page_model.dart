import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'old_landing_page_widget.dart' show OldLandingPageWidget;
import 'package:flutter/material.dart';

class OldLandingPageModel extends FlutterFlowModel<OldLandingPageWidget> {
  ///  Local state fields for this page.

  bool enableConversations = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Backend Call - API (Get Conversations)] action in DropDown widget.
  ApiCallResponse? getConvosOnDropdownSelect;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
