import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:flutter/material.dart';

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

  String? selectedTourName;

  String? selectedTourID;

  String? selectedConvo;

  List<String> tours = [];
  void addToTours(String item) => tours.add(item);
  void removeFromTours(String item) => tours.remove(item);
  void removeAtIndexFromTours(int index) => tours.removeAt(index);
  void insertAtIndexInTours(int index, String item) =>
      tours.insert(index, item);
  void updateToursAtIndex(int index, Function(String) updateFn) =>
      tours[index] = updateFn(tours[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Conversations by User)] action in LandingPage widget.
  ApiCallResponse? getConvoByUserLoad;
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
