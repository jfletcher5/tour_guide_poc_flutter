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
  static GetConversationsByUserCall getConversationsByUserCall =
      GetConversationsByUserCall();
  static GetTourNameByIDCall getTourNameByIDCall = GetTourNameByIDCall();
  static CreateUuidCall createUuidCall = CreateUuidCall();
  static DeleteConversationCall deleteConversationCall =
      DeleteConversationCall();
  static GenerateConvoSummaryCall generateConvoSummaryCall =
      GenerateConvoSummaryCall();
  static AddNewTourCall addNewTourCall = AddNewTourCall();
  static DeleteTourCall deleteTourCall = DeleteTourCall();
  static GetConversationSummaryCall getConversationSummaryCall =
      GetConversationSummaryCall();
}

class AddNewMessageCall {
  Future<ApiCallResponse> call({
    String? newMessage = 'new api',
    String? tourID = 'nwIL3EK0Bk60Ptozwn7d',
    String? conversationId = 'default',
    String? userID = 'jon',
    String? conversationName = '',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "conversation_id": "$conversationId",
  "conversation_name": "$conversationName",
  "tourID": "$tourID",
  "tourName": "",
  "userID": "$userID",
  "message": "$newMessage"
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
      isStreamingApi: false,
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
      isStreamingApi: false,
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
      isStreamingApi: false,
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
      isStreamingApi: false,
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

class GetConversationsByUserCall {
  Future<ApiCallResponse> call({
    String? userID = '',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Conversations by User',
      apiUrl: '$baseUrl/services/get_conversations_user',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'userID': userID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? conversationIDs(dynamic response) => (getJsonField(
        response,
        r'''$[:].conversation_id''',
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
  List<String>? tourNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].tourName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? conversationNames(dynamic response) => (getJsonField(
        response,
        r'''$[:].conversation_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetTourNameByIDCall {
  Future<ApiCallResponse> call({
    String? tourID = '',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Tour Name by ID',
      apiUrl: '$baseUrl/services/get_tour_name',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'tourID': tourID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUuidCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create uuid',
      apiUrl: '$baseUrl/services/create_uuid',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteConversationCall {
  Future<ApiCallResponse> call({
    String? userID = '',
    String? conversationID = '',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Conversation',
      apiUrl: '$baseUrl/services/delete_convo_from_user',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'userID': userID,
        'conversation_id': conversationID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GenerateConvoSummaryCall {
  Future<ApiCallResponse> call({
    String? conversationId = '',
    String? modelName = '',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "conversation_id": "$conversationId",
  "model_name": "$modelName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'generate convo summary',
      apiUrl: '${baseUrl}services/create_conversation_summary',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddNewTourCall {
  Future<ApiCallResponse> call({
    String? tourName = '',
    FFUploadedFile? file,
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Add New Tour',
      apiUrl: '$baseUrl/services/add_tour',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'tourName': tourName,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTourCall {
  Future<ApiCallResponse> call({
    String? tourID = '',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Tour',
      apiUrl: '$baseUrl/services/delete_tour',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'tourID': tourID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetConversationSummaryCall {
  Future<ApiCallResponse> call({
    String? conversationId = '',
  }) async {
    final baseUrl = ChatServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Conversation Summary',
      apiUrl: '$baseUrl/services/get_conversation_summary',
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
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? summaryContent(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.summary''',
      ));
}

/// End Chat Services Group Code

/// Start Tour Services Group Code

class TourServicesGroup {
  static String getBaseUrl() => 'https://tour-guide-poc.uk.r.appspot.com/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'accept': 'application/json',
  };
  static GetTourByCodeFilterCall getTourByCodeFilterCall =
      GetTourByCodeFilterCall();
  static GetUserToursCall getUserToursCall = GetUserToursCall();
}

class GetTourByCodeFilterCall {
  Future<ApiCallResponse> call({
    String? filter = '',
  }) async {
    final baseUrl = TourServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Tour by Code Filter',
      apiUrl: '${baseUrl}services/get_tours_by_filter',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'filter': filter,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? tourID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tourID''',
      ));
  String? tourName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tourName''',
      ));
  String? tourCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tourCode''',
      ));
}

class GetUserToursCall {
  Future<ApiCallResponse> call({
    String? userID = '',
  }) async {
    final baseUrl = TourServicesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get User Tours',
      apiUrl: '$baseUrl/services/get_tours_by_user',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'userID': userID,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? tourIDs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tourID''',
      ));
  String? tourNames(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].tourName''',
      ));
}

/// End Tour Services Group Code

/// Start User Services Group Code

class UserServicesGroup {
  static String getBaseUrl() => 'https://tour-guide-poc.uk.r.appspot.com/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'accept': 'application/json',
  };
  static AddTourToUserCall addTourToUserCall = AddTourToUserCall();
}

class AddTourToUserCall {
  Future<ApiCallResponse> call({
    String? userID = '',
    String? tourID = '',
  }) async {
    final baseUrl = UserServicesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "userID": "$userID",
  "tourID": "$tourID"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add tour to User',
      apiUrl: '${baseUrl}services/add_tour_to_user',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End User Services Group Code

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
