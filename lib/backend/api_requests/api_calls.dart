import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Chat Services Group Code

class ChatServicesGroup {
  static String getBaseUrl() => 'https://tour-guide-poc.uk.r.appspot.com/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'accept': 'application/json',
  };
  static AddNewMessageCall addNewMessageCall = AddNewMessageCall();
  static GetChainMessagesCall getChainMessagesCall = GetChainMessagesCall();
}

class AddNewMessageCall {
  Future<ApiCallResponse> call({
    String? newMessage = 'default message',
    String? tourID = '24352fcc-cecd-45e0-821d-105437274172',
    String? conversationId = 'default conversation',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "conversation_id": "$conversationId",
  "tourID": "$tourID",
  "newMessage": "$newMessage"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add New Message',
      apiUrl: '${baseUrl}services/add_message_to_chain',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetChainMessagesCall {
  Future<ApiCallResponse> call({
    String? conversationId = '',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Chain Messages',
      apiUrl: '$baseUrl/services/get_chain_by_conversationID',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'conversation_id': conversationId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

/// End Chat Services Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
