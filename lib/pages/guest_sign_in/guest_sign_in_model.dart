import '/flutter_flow/flutter_flow_util.dart';
import 'guest_sign_in_widget.dart' show GuestSignInWidget;
import 'package:flutter/material.dart';

class GuestSignInModel extends FlutterFlowModel<GuestSignInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for guestName widget.
  FocusNode? guestNameFocusNode;
  TextEditingController? guestNameTextController;
  String? Function(BuildContext, String?)? guestNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    guestNameFocusNode?.dispose();
    guestNameTextController?.dispose();
  }
}
