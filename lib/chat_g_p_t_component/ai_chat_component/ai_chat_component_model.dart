import '/backend/api_requests/api_calls.dart';
import '/chat_g_p_t_component/writing_indicator/writing_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ai_chat_component_widget.dart' show AiChatComponentWidget;
import 'package:flutter/material.dart';

class AiChatComponentModel extends FlutterFlowModel<AiChatComponentWidget> {
  ///  Local state fields for this component.

  List<dynamic> chatHistory = [];
  void addToChatHistory(dynamic item) => chatHistory.add(item);
  void removeFromChatHistory(dynamic item) => chatHistory.remove(item);
  void removeAtIndexFromChatHistory(int index) => chatHistory.removeAt(index);
  void insertAtIndexInChatHistory(int index, dynamic item) =>
      chatHistory.insert(index, item);
  void updateChatHistoryAtIndex(int index, Function(dynamic) updateFn) =>
      chatHistory[index] = updateFn(chatHistory[index]);

  bool aiResponding = false;

  String inputContent = '';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Chain Messages)] action in aiChat_Component widget.
  ApiCallResponse? apiResult9hv;
  // Model for writingIndicator component.
  late WritingIndicatorModel writingIndicatorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Add New Message)] action in IconButton widget.
  ApiCallResponse? chatGPTResponse;

  @override
  void initState(BuildContext context) {
    writingIndicatorModel = createModel(context, () => WritingIndicatorModel());
  }

  @override
  void dispose() {
    writingIndicatorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
