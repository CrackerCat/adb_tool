import 'package:adb_tool/app/controller/config_controller.dart';
import 'package:adb_tool/app/controller/devices_controller.dart';
import 'package:adb_tool/app/controller/history_controller.dart';
import 'package:adb_tool/config/config.dart';
import 'package:get/get.dart';
import 'package:global_repository/global_repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    if (RuntimeEnvir.packageName == Config.packageName) {
      Get.put(DevicesController());
    }
    Get.put(HistoryController());
    Get.put(ConfigController());
  }
}
