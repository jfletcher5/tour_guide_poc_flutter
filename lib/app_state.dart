import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _appActiveConvoName =
          prefs.getString('ff_appActiveConvoName') ?? _appActiveConvoName;
    });
    _safeInit(() {
      _appActiveConvoID =
          prefs.getString('ff_appActiveConvoID') ?? _appActiveConvoID;
    });
    _safeInit(() {
      _appActiveTourName =
          prefs.getString('ff_appActiveTourName') ?? _appActiveTourName;
    });
    _safeInit(() {
      _appActiveTourID =
          prefs.getString('ff_appActiveTourID') ?? _appActiveTourID;
    });
    _safeInit(() {
      _appTourNameList =
          prefs.getStringList('ff_appTourNameList') ?? _appTourNameList;
    });
    _safeInit(() {
      _appTourIDsList =
          prefs.getStringList('ff_appTourIDsList') ?? _appTourIDsList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _appActiveConvoName = '';
  String get appActiveConvoName => _appActiveConvoName;
  set appActiveConvoName(String value) {
    _appActiveConvoName = value;
    prefs.setString('ff_appActiveConvoName', value);
  }

  String _appActiveConvoID = '';
  String get appActiveConvoID => _appActiveConvoID;
  set appActiveConvoID(String value) {
    _appActiveConvoID = value;
    prefs.setString('ff_appActiveConvoID', value);
  }

  String _appActiveConvoSummary = '';
  String get appActiveConvoSummary => _appActiveConvoSummary;
  set appActiveConvoSummary(String value) {
    _appActiveConvoSummary = value;
  }

  String _appActiveTourName = '';
  String get appActiveTourName => _appActiveTourName;
  set appActiveTourName(String value) {
    _appActiveTourName = value;
    prefs.setString('ff_appActiveTourName', value);
  }

  String _appActiveTourID = '';
  String get appActiveTourID => _appActiveTourID;
  set appActiveTourID(String value) {
    _appActiveTourID = value;
    prefs.setString('ff_appActiveTourID', value);
  }

  List<String> _appTourNameList = [];
  List<String> get appTourNameList => _appTourNameList;
  set appTourNameList(List<String> value) {
    _appTourNameList = value;
    prefs.setStringList('ff_appTourNameList', value);
  }

  void addToAppTourNameList(String value) {
    appTourNameList.add(value);
    prefs.setStringList('ff_appTourNameList', _appTourNameList);
  }

  void removeFromAppTourNameList(String value) {
    appTourNameList.remove(value);
    prefs.setStringList('ff_appTourNameList', _appTourNameList);
  }

  void removeAtIndexFromAppTourNameList(int index) {
    appTourNameList.removeAt(index);
    prefs.setStringList('ff_appTourNameList', _appTourNameList);
  }

  void updateAppTourNameListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    appTourNameList[index] = updateFn(_appTourNameList[index]);
    prefs.setStringList('ff_appTourNameList', _appTourNameList);
  }

  void insertAtIndexInAppTourNameList(int index, String value) {
    appTourNameList.insert(index, value);
    prefs.setStringList('ff_appTourNameList', _appTourNameList);
  }

  List<String> _appTourIDsList = [];
  List<String> get appTourIDsList => _appTourIDsList;
  set appTourIDsList(List<String> value) {
    _appTourIDsList = value;
    prefs.setStringList('ff_appTourIDsList', value);
  }

  void addToAppTourIDsList(String value) {
    appTourIDsList.add(value);
    prefs.setStringList('ff_appTourIDsList', _appTourIDsList);
  }

  void removeFromAppTourIDsList(String value) {
    appTourIDsList.remove(value);
    prefs.setStringList('ff_appTourIDsList', _appTourIDsList);
  }

  void removeAtIndexFromAppTourIDsList(int index) {
    appTourIDsList.removeAt(index);
    prefs.setStringList('ff_appTourIDsList', _appTourIDsList);
  }

  void updateAppTourIDsListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    appTourIDsList[index] = updateFn(_appTourIDsList[index]);
    prefs.setStringList('ff_appTourIDsList', _appTourIDsList);
  }

  void insertAtIndexInAppTourIDsList(int index, String value) {
    appTourIDsList.insert(index, value);
    prefs.setStringList('ff_appTourIDsList', _appTourIDsList);
  }

  dynamic _appConversationsJSON;
  dynamic get appConversationsJSON => _appConversationsJSON;
  set appConversationsJSON(dynamic value) {
    _appConversationsJSON = value;
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

  dynamic _appAllToursJSON;
  dynamic get appAllToursJSON => _appAllToursJSON;
  set appAllToursJSON(dynamic value) {
    _appAllToursJSON = value;
  }

  String _appHumanAudioRecording = '';
  String get appHumanAudioRecording => _appHumanAudioRecording;
  set appHumanAudioRecording(String value) {
    _appHumanAudioRecording = value;
  }

  List<String> _appUserTourNameList = [];
  List<String> get appUserTourNameList => _appUserTourNameList;
  set appUserTourNameList(List<String> value) {
    _appUserTourNameList = value;
  }

  void addToAppUserTourNameList(String value) {
    appUserTourNameList.add(value);
  }

  void removeFromAppUserTourNameList(String value) {
    appUserTourNameList.remove(value);
  }

  void removeAtIndexFromAppUserTourNameList(int index) {
    appUserTourNameList.removeAt(index);
  }

  void updateAppUserTourNameListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    appUserTourNameList[index] = updateFn(_appUserTourNameList[index]);
  }

  void insertAtIndexInAppUserTourNameList(int index, String value) {
    appUserTourNameList.insert(index, value);
  }

  List<String> _appUserTourIDList = [];
  List<String> get appUserTourIDList => _appUserTourIDList;
  set appUserTourIDList(List<String> value) {
    _appUserTourIDList = value;
  }

  void addToAppUserTourIDList(String value) {
    appUserTourIDList.add(value);
  }

  void removeFromAppUserTourIDList(String value) {
    appUserTourIDList.remove(value);
  }

  void removeAtIndexFromAppUserTourIDList(int index) {
    appUserTourIDList.removeAt(index);
  }

  void updateAppUserTourIDListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    appUserTourIDList[index] = updateFn(_appUserTourIDList[index]);
  }

  void insertAtIndexInAppUserTourIDList(int index, String value) {
    appUserTourIDList.insert(index, value);
  }

  dynamic _appUserAllToursJSON;
  dynamic get appUserAllToursJSON => _appUserAllToursJSON;
  set appUserAllToursJSON(dynamic value) {
    _appUserAllToursJSON = value;
  }

  bool _expandableFAB = false;
  bool get expandableFAB => _expandableFAB;
  set expandableFAB(bool value) {
    _expandableFAB = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
