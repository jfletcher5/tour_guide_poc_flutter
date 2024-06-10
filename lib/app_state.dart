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

  String _activeConvoID = '';
  String get activeConvoID => _activeConvoID;
  set activeConvoID(String value) {
    _activeConvoID = value;
  }

  String _activeTourName = '';
  String get activeTourName => _activeTourName;
  set activeTourName(String value) {
    _activeTourName = value;
  }

  String _activeTourID = '';
  String get activeTourID => _activeTourID;
  set activeTourID(String value) {
    _activeTourID = value;
  }

  List<String> _appTourList = [];
  List<String> get appTourList => _appTourList;
  set appTourList(List<String> value) {
    _appTourList = value;
  }

  void addToAppTourList(String value) {
    _appTourList.add(value);
  }

  void removeFromAppTourList(String value) {
    _appTourList.remove(value);
  }

  void removeAtIndexFromAppTourList(int index) {
    _appTourList.removeAt(index);
  }

  void updateAppTourListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _appTourList[index] = updateFn(_appTourList[index]);
  }

  void insertAtIndexInAppTourList(int index, String value) {
    _appTourList.insert(index, value);
  }

  dynamic _appTourListJSON;
  dynamic get appTourListJSON => _appTourListJSON;
  set appTourListJSON(dynamic value) {
    _appTourListJSON = value;
  }
}
