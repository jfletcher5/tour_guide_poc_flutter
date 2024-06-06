import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandingPageModel extends FlutterFlowModel<LandingPageWidget> {
  ///  Local state fields for this page.

  bool enableConversations = true;

  List<String> conversations = [];
  void addToConversations(String item) => conversations.add(item);
  void removeFromConversations(String item) => conversations.remove(item);
  void removeAtIndexFromConversations(int index) =>
      conversations.removeAt(index);
  void insertAtIndexInConversations(int index, String item) =>
      conversations.insert(index, item);
  void updateConversationsAtIndex(int index, Function(String) updateFn) =>
      conversations[index] = updateFn(conversations[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
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
