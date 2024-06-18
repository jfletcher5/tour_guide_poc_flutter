import '/backend/api_requests/api_calls.dart';
import '/chat_g_p_t_component/ai_chat_component/ai_chat_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_ai_screen_widget.dart' show ChatAiScreenWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class ChatAiScreenModel extends FlutterFlowModel<ChatAiScreenWidget> {
  ///  Local state fields for this page.

  bool aiResponding = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for aiChat_Component component.
  late AiChatComponentModel aiChatComponentModel;
  // Stores action output result for [Backend Call - API (generate convo summary)] action in Button widget.
  ApiCallResponse? apiResultpxi;
  AudioRecorder? audioRecorder;
  String? recordingOutput;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
