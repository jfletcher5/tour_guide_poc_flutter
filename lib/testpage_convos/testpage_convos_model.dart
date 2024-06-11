import '/components/convo_list/convo_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'testpage_convos_widget.dart' show TestpageConvosWidget;
import 'package:flutter/material.dart';

class TestpageConvosModel extends FlutterFlowModel<TestpageConvosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ConvoList component.
  late ConvoListModel convoListModel;

  @override
  void initState(BuildContext context) {
    convoListModel = createModel(context, () => ConvoListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    convoListModel.dispose();
  }
}
