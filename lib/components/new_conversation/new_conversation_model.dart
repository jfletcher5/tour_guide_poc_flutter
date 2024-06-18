import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_conversation_widget.dart' show NewConversationWidget;
import 'package:flutter/material.dart';

class NewConversationModel extends FlutterFlowModel<NewConversationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for tourSearch widget.
  FocusNode? tourSearchFocusNode;
  TextEditingController? tourSearchTextController;
  String? Function(BuildContext, String?)? tourSearchTextControllerValidator;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Backend Call - API (Get Tour by Code Filter)] action in Icon widget.
  ApiCallResponse? apiResult31x;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for convoName widget.
  FocusNode? convoNameFocusNode;
  TextEditingController? convoNameTextController;
  String? Function(BuildContext, String?)? convoNameTextControllerValidator;
  // State field(s) for firstMessage widget.
  FocusNode? firstMessageFocusNode;
  TextEditingController? firstMessageTextController;
  String? Function(BuildContext, String?)? firstMessageTextControllerValidator;
  // Stores action output result for [Backend Call - API (create uuid)] action in Button widget.
  ApiCallResponse? uuidOutput;
  // Stores action output result for [Backend Call - API (Add New Message)] action in Button widget.
  ApiCallResponse? apiResultomg;
  // Stores action output result for [Backend Call - API (Get Conversations by User)] action in Button widget.
  ApiCallResponse? apiResultdx1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tourSearchFocusNode?.dispose();
    tourSearchTextController?.dispose();

    convoNameFocusNode?.dispose();
    convoNameTextController?.dispose();

    firstMessageFocusNode?.dispose();
    firstMessageTextController?.dispose();
  }
}
