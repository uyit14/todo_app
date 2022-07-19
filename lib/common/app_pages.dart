import 'package:get/get.dart';
import 'package:todo_app/presentation/home/detail_page.dart';

import '../presentation/home/home.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAl_ROUTE = AppRoutes.HOME;

  static final routes = [
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomePage(),
        binding: HomeBinding(),
        children: [
          GetPage(name: AppRoutes.DETAIL, page: () => const DetailPage())
        ]),
  ];
}
