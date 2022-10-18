class Api{
  Api({required this.apiName, required this.deviceId, required this.isChecked, required this.editDevice, });
  final String apiName;
  final String deviceId;
  final bool isChecked;
  final void Function() editDevice;
}