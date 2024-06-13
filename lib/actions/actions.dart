import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future refreshUserConversationList(BuildContext context) async {
  ApiCallResponse? getConvoByUser;

  getConvoByUser = await ChatServicesGroup.getConversationsByUserCall.call(
    userID: currentUserUid,
  );
  if ((getConvoByUser.jsonBody ?? '')) {
    FFAppState().appConversationsJSON = (getConvoByUser.jsonBody ?? '');
    FFAppState().update(() {});
  }
}
