import '/flutter_flow/flutter_flow_util.dart';
import 'app_loader_widget.dart' show AppLoaderWidget;
import 'package:flutter/material.dart';

class AppLoaderModel extends FlutterFlowModel<AppLoaderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
