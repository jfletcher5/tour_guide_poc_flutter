import '/backend/api_requests/api_calls.dart';
import '/chat_g_p_t_component/ai_chat_component/ai_chat_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_ai_screen_widget.dart' show ChatAiScreenWidget;
import 'package:flutter/material.dart';

class ChatAiScreenModel extends FlutterFlowModel<ChatAiScreenWidget> {
  ///  Local state fields for this page.

  String? inputContent = '';

  List<dynamic> chatHistory = [];
  void addToChatHistory(dynamic item) => chatHistory.add(item);
  void removeFromChatHistory(dynamic item) => chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void insertAtIndexInChatHistory(int index, dynamic item) =>
      chatHistory.insert(index, item);
  void updateChatHistoryAtIndex(int index, Function(dynamic) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  bool aiResponding = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in chat_ai_Screen widget.
  ApiCallResponse? apiResultef2;
  // Model for aiChat_Component component.
  late AiChatComponentModel aiChatComponentModel;
  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in IconButton widget.
  ApiCallResponse? apiResult5ey;

  @override
  void initState(BuildContext context) {
    aiChatComponentModel = createModel(context, () => AiChatComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    aiChatComponentModel.dispose();
  }
}
