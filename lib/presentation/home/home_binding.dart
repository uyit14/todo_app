import 'package:get/get.dart';

import '../../domain/usecases/usecase.dart';
import '../../infrastructure/repositories/repository_impl.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RepositoryImpl());
    Get.lazyPut(
        () => ToCallListUseCase(repository: Get.find<RepositoryImpl>()));
    Get.lazyPut(() => ToBuyListUseCase(repository: Get.find<RepositoryImpl>()));
    Get.put(HomeController(
        toCallListUseCase: Get.find(), toBuyListUseCase: Get.find()));
  }
}
