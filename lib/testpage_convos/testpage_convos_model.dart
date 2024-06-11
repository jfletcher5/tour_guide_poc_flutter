import '/flutter_flow/flutter_flow_util.dart';
import 'testpage_convos_widget.dart' show TestpageConvosWidget;
import 'package:flutter/material.dart';

class TestpageConvosModel extends FlutterFlowModel<TestpageConvosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
