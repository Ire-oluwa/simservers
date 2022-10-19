import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:simservers/models/Api/api.dart';

class ApiData extends ChangeNotifier {
  late List<Api> _api = [
    Api(
      apiName: "Glo cloud",
      deviceId: "3234",
      isChecked: false,
      //TODO: pop up
      editDevice: () {},
    ),
  ];

  UnmodifiableListView<Api> get api {
    return UnmodifiableListView(_api);
  }

  int get index{
    return api.indexOf(api);
  }

  void addApi(apiName, deviceId, isChecked) {
    final api = Api(
        apiName: apiName,
        deviceId: deviceId,
        isChecked: isChecked,
        editDevice: () {});
    _api.add(api);
    notifyListeners();
  }

  void editDevice(){
    //TODO: logic to edit device
    notifyListeners();
  }

  void resetApi(Api api) {
    notifyListeners();
  }

  void deleteApi(Api api) {
    _api.remove(api);
    notifyListeners();
  }
}
