import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simservers/models/Api/api_data.dart';
import 'package:simservers/widgets/api_tile/api_tile.dart';

class ApiList extends StatelessWidget {
  const ApiList({Key? key, required this.checkBoxCallBack}) : super(key: key);
  final void Function(bool?) checkBoxCallBack;

  @override
  Widget build(BuildContext context) {
    return Consumer<ApiData>(
      builder: (context, apiData, child) {
        return SizedBox(
          height: 926.0.h,
          width: 428.0.w,
          child: ListView.builder(
              itemBuilder: (context, index) {
                final api = apiData.api[index];
                return ApiTile(
                  isChecked: api.isChecked,
                  checkBoxCallBack: checkBoxCallBack,
                  deviceName: api.apiName,
                  deviceId: api.deviceId,
                  onClick: api.editDevice,
                );
              }
          ),
        );
      },
    );
  }
}
