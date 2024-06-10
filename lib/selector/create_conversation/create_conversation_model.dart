import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_conversation_widget.dart' show CreateConversationWidget;
import 'package:flutter/material.dart';

class CreateConversationModel
    extends FlutterFlowModel<CreateConversationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for convoID widget.
  FocusNode? convoIDFocusNode;
  TextEditingController? convoIDTextController;
  String? Function(BuildContext, String?)? convoIDTextControllerValidator;
  // State field(s) for firstMessage widget.
  FocusNode? firstMessageFocusNode;
  TextEditingController? firstMessageTextController;
  String? Function(BuildContext, String?)? firstMessageTextControllerValidator;
  // Stores action output result for [Backend Call - API (Add New Message)] action in Button widget.
  ApiCallResponse? apiResultomg;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    convoIDFocusNode?.dispose();
    convoIDTextController?.dispose();

    firstMessageFocusNode?.dispose();
    firstMessageTextController?.dispose();
  }
}
