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
  static GetToursCall getToursCall = GetToursCall();
  static GetConversationsCall getConversationsCall = GetConversationsCall();
}

class AddNewMessageCall {
  Future<ApiCallResponse> call({
    String? newMessage = 'new api',
    String? tourID = 'nwIL3EK0Bk60Ptozwn7d',
    String? conversationId = 'default',
    String? userID = 'jon',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "conversation_id": "$conversationId",
  "tourID": "$tourID",
  "newMessage": "$newMessage",
  "userID": "$userID"
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

  List<String>? chatMessages(dynamic response) => (getJsonField(
        response,
        r'''$[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? chatRole(dynamic response) => (getJsonField(
        response,
        r'''$[:].role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetChainMessagesCall {
  Future<ApiCallResponse> call({
    String? conversationId = '',
    int? speaker,
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
        'speaker': speaker,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  List<String>? humanMessages(dynamic response) => (getJsonField(
        response,
        r'''$[?(@.role == 'human')].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? aIMessages(dynamic response) => (getJsonField(
        response,
        r'''$[?(@.role == 'ai')].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? allmessageRoles(dynamic response) => (getJsonField(
        response,
        r'''$[:].role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? allMessageContent(dynamic response) => (getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? messagesOnly(dynamic response) => (getJsonField(
        response,
        r'''$[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? rolesOnly(dynamic response) => (getJsonField(
        response,
        r'''$[:].role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetToursCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Tours',
      apiUrl: '${baseUrl}services/get_tours',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? tourList(dynamic response) => (getJsonField(
        response,
        r'''$[:].tourName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tourIDs(dynamic response) => (getJsonField(
        response,
        r'''$[:].tourID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? lastTour(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[0].tourID''',
      ));
}

class GetConversationsCall {
  Future<ApiCallResponse> call({
    String? userID = 'jon',
    String? tourID = 'nwIL3EK0Bk60Ptozwn7d',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Conversations',
      apiUrl: '$baseUrl/services/get_conversations',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'userID': userID,
        'tourID': tourID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? conversations(dynamic response) => (getJsonField(
        response,
        r'''$[:].Conversation''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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
