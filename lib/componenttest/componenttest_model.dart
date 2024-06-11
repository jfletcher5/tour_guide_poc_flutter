import '/components/tour_list/tour_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'componenttest_widget.dart' show ComponenttestWidget;
import 'package:flutter/material.dart';

class ComponenttestModel extends FlutterFlowModel<ComponenttestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for tourList component.
  late TourListModel tourListModel;

  @override
  void initState(BuildContext context) {
    tourListModel = createModel(context, () => TourListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tourListModel.dispose();
  }
}
