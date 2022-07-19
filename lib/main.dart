import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/presentation/home/home.dart';

import 'common/app_pages.dart';

void main() {
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
