import '/flutter_flow/flutter_flow_util.dart';
import 'testpage_widget.dart' show TestpageWidget;
import 'package:flutter/material.dart';

class TestpageModel extends FlutterFlowModel<TestpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
