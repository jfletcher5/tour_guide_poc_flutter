import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FastAPI Group Code

class FastAPIGroup {
  static String getBaseUrl() => 'https://tour-guide-poc.uk.r.appspot.com/';
  static Map<String, String> headers = {};
  static CreateChainMessageServicesAddMessageToChainPostCall
      createChainMessageServicesAddMessageToChainPostCall =
      CreateChainMessageServicesAddMessageToChainPostCall();
  static GetChainEndpointServicesGetChainByConversationIDGetCall
      getChainEndpointServicesGetChainByConversationIDGetCall =
      GetChainEndpointServicesGetChainByConversationIDGetCall();
}

class CreateChainMessageServicesAddMessageToChainPostCall {
  Future<ApiCallResponse> call({
    String? newMessage = '',
    dynamic chatArgsJson,
  }) async {
    final baseUrl = FastAPIGroup.getBaseUrl();

    final chatArgs = _serializeJson(chatArgsJson);

    return ApiManager.instance.makeApiCall(
      callName: 'create_chain_message_services_add_message_to_chain_post',
      apiUrl: '$baseUrl/services/add_message_to_chain',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'newMessage': newMessage,
        'chat_args': chatArgs,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetChainEndpointServicesGetChainByConversationIDGetCall {
  Future<ApiCallResponse> call({
    String? conversationId = '',
  }) async {
    final baseUrl = FastAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_chain_endpoint_services_get_chain_by_conversationID_get',
      apiUrl: '$baseUrl/services/get_chain_by_conversationID',
      callType: ApiCallType.GET,
      headers: {},
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

/// End FastAPI Group Code

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
