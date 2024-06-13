import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _appActiveConvoID = '';
  String get appActiveConvoID => _appActiveConvoID;
  set appActiveConvoID(String value) {
    _appActiveConvoID = value;
  }

  String _appActiveTourName = '';
  String get appActiveTourName => _appActiveTourName;
  set appActiveTourName(String value) {
    _appActiveTourName = value;
  }

  String _appActiveTourID = '';
  String get appActiveTourID => _appActiveTourID;
  set appActiveTourID(String value) {
    _appActiveTourID = value;
  }

  List<String> _appTourList = [];
  List<String> get appTourList => _appTourList;
  set appTourList(List<String> value) {
    _appTourList = value;
  }

  void addToAppTourList(String value) {
    appTourList.add(value);
  }

  void removeFromAppTourList(String value) {
    appTourList.remove(value);
  }

  void removeAtIndexFromAppTourList(int index) {
    appTourList.removeAt(index);
  }

  void updateAppTourListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    appTourList[index] = updateFn(_appTourList[index]);
  }

  void insertAtIndexInAppTourList(int index, String value) {
    appTourList.insert(index, value);
  }

  List<String> _appTourIDsList = [];
  List<String> get appTourIDsList => _appTourIDsList;
  set appTourIDsList(List<String> value) {
    _appTourIDsList = value;
  }

  void addToAppTourIDsList(String value) {
    appTourIDsList.add(value);
  }

  void removeFromAppTourIDsList(String value) {
    appTourIDsList.remove(value);
  }

  void removeAtIndexFromAppTourIDsList(int index) {
    appTourIDsList.removeAt(index);
  }

  void updateAppTourIDsListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    appTourIDsList[index] = updateFn(_appTourIDsList[index]);
  }

  void insertAtIndexInAppTourIDsList(int index, String value) {
    appTourIDsList.insert(index, value);
  }

  dynamic _appTourListJSON;
  dynamic get appTourListJSON => _appTourListJSON;
  set appTourListJSON(dynamic value) {
    _appTourListJSON = value;
  }

  dynamic _appConversationsJSON;
  dynamic get appConversationsJSON => _appConversationsJSON;
  set appConversationsJSON(dynamic value) {
    _appConversationsJSON = value;
  }

  List<String> _appConversationsList = [];
  List<String> get appConversationsList => _appConversationsList;
  set appConversationsList(List<String> value) {
    _appConversationsList = value;
  }

  void addToAppConversationsList(String value) {
    appConversationsList.add(value);
  }

  void removeFromAppConversationsList(String value) {
    appConversationsList.remove(value);
  }

  void removeAtIndexFromAppConversationsList(int index) {
    appConversationsList.removeAt(index);
  }

  void updateAppConversationsListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    appConversationsList[index] = updateFn(_appConversationsList[index]);
  }

  void insertAtIndexInAppConversationsList(int index, String value) {
    appConversationsList.insert(index, value);
  }

  dynamic _appChatHistory;
  dynamic get appChatHistory => _appChatHistory;
  set appChatHistory(dynamic value) {
    _appChatHistory = value;
  }

  List<dynamic> _appChatHistoryJSONList = [];
  List<dynamic> get appChatHistoryJSONList => _appChatHistoryJSONList;
  set appChatHistoryJSONList(List<dynamic> value) {
    _appChatHistoryJSONList = value;
  }

  void addToAppChatHistoryJSONList(dynamic value) {
    appChatHistoryJSONList.add(value);
  }

  void removeFromAppChatHistoryJSONList(dynamic value) {
    appChatHistoryJSONList.remove(value);
  }

  void removeAtIndexFromAppChatHistoryJSONList(int index) {
    appChatHistoryJSONList.removeAt(index);
  }

  void updateAppChatHistoryJSONListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    appChatHistoryJSONList[index] = updateFn(_appChatHistoryJSONList[index]);
  }

  void insertAtIndexInAppChatHistoryJSONList(int index, dynamic value) {
    appChatHistoryJSONList.insert(index, value);
  }
}
