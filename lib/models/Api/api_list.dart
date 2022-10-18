import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simservers/models/Api/api_data.dart';
import 'package:simservers/widgets/api_tile/api_tile.dart';

class ApiList extends StatelessWidget {
  const ApiList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ApiData>(
      builder: (context, apiData, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              final api = apiData.api[index];
              return ApiTile(
                isChecked: api.isChecked,
                checkBoxCallBack: (checkBoxState){},
                deviceName: api.apiName,
                deviceId: api.deviceId,
                onClick: api.editDevice,
              );
            }
        );
      },
    );
  }
}
