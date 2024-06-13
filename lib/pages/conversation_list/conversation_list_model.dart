import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'conversation_list_widget.dart' show ConversationListWidget;
import 'package:flutter/material.dart';

class ConversationListModel extends FlutterFlowModel<ConversationListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Conversations by User)] action in ListView widget.
  ApiCallResponse? apiResultm6b;
  // Stores action output result for [Backend Call - API (Delete Conversation)] action in SlidableActionWidget widget.
  ApiCallResponse? apiResultgx3;
  // Stores action output result for [Backend Call - API (Get Conversations by User)] action in SlidableActionWidget widget.
  ApiCallResponse? apiResultv7q;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
