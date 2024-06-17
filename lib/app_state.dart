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

  String _appActiveConvoSummary = '';
  String get appActiveConvoSummary => _appActiveConvoSummary;
  set appActiveConvoSummary(String value) {
    _appActiveConvoSummary = value;
  }

  List<dynamic> _appAllToursJSONList = [];
  List<dynamic> get appAllToursJSONList => _appAllToursJSONList;
  set appAllToursJSONList(List<dynamic> value) {
    _appAllToursJSONList = value;
  }

  void addToAppAllToursJSONList(dynamic value) {
    appAllToursJSONList.add(value);
  }

  void removeFromAppAllToursJSONList(dynamic value) {
    appAllToursJSONList.remove(value);
  }

  void removeAtIndexFromAppAllToursJSONList(int index) {
    appAllToursJSONList.removeAt(index);
  }

  void updateAppAllToursJSONListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    appAllToursJSONList[index] = updateFn(_appAllToursJSONList[index]);
  }

  void insertAtIndexInAppAllToursJSONList(int index, dynamic value) {
    appAllToursJSONList.insert(index, value);
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
