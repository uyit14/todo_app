import 'package:get/get.dart';
import 'app_routes.dart';
import '../presentation/home/home.dart';

class AppPages {
  static const INITIAl_ROUTE = AppRoutes.HOME;

  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];

}