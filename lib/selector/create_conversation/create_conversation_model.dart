import '/flutter_flow/flutter_flow_util.dart';
import 'create_conversation_widget.dart' show CreateConversationWidget;
import 'package:flutter/material.dart';

class CreateConversationModel
    extends FlutterFlowModel<CreateConversationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for convoName widget.
  FocusNode? convoNameFocusNode;
  TextEditingController? convoNameTextController;
  String? Function(BuildContext, String?)? convoNameTextControllerValidator;
  // State field(s) for firstMessage widget.
  FocusNode? firstMessageFocusNode;
  TextEditingController? firstMessageTextController;
  String? Function(BuildContext, String?)? firstMessageTextControllerValidator;
  // State field(s) for userID widget.
  FocusNode? userIDFocusNode;
  TextEditingController? userIDTextController;
  String? Function(BuildContext, String?)? userIDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    convoNameFocusNode?.dispose();
    convoNameTextController?.dispose();

    firstMessageFocusNode?.dispose();
    firstMessageTextController?.dispose();

    userIDFocusNode?.dispose();
    userIDTextController?.dispose();
  }
}
