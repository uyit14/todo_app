import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_app/infrastructure/models/hive_sell_model.dart';
import 'package:todo_app/presentation/home/home.dart';

import 'common/app_pages.dart';
import 'common/db_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final applicationDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(applicationDocumentDir.path);

  Hive.registerAdapter(HiveSellModelAdapter());
  await Hive.openBox<HiveSellModel>(DbConstants.DB_NAME);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'To-Do App',
      enableLog: true,
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppPages.INITIAl_ROUTE,
      getPages: AppPages.routes,
    );
  }
}
