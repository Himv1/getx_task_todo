import 'package:flutter/material.dart';
import 'package:getx_todo_list_ibrahim/app/data/services/storage/services.dart';
import 'package:getx_todo_list_ibrahim/app/modules/home/view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'app/modules/home/binding.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().int());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo List using GetX',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}
