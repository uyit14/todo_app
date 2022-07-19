import 'package:get/get.dart';
import 'package:todo_app/common/app_routes.dart';
import '../../domain/entities/entity.dart';
import '../../domain/usecases/usecase.dart';

enum TODO_TYPE { call, buy, sell }

class HomeController extends GetxController {
  ToCallListUseCase toCallListUseCase;
  ToBuyListUseCase toBuyListUseCase;

  HomeController(
      {required this.toCallListUseCase, required this.toBuyListUseCase});

  var list = Rxn<List<dynamic>>();
  var isLoading = Rxn<bool>(false);

  navigateToDetail(TODO_TYPE todoType) {
    isLoading.value = true;
    list.value = [];
    Get.toNamed(AppRoutes.HOME + AppRoutes.DETAIL, arguments: todoType);
    switch (todoType) {
      case TODO_TYPE.call:
        getToCallList();
        break;
      case TODO_TYPE.buy:
        getToBuyList();
        break;
      case TODO_TYPE.sell:
        getToBuyList();
        break;
    }
  }

  void getToCallList() async {
    final result = await toCallListUseCase.call(NoParams());
    list.value = result;
    list.value = result;
    isLoading.value = false;
  }

  void getToBuyList() async {
    try {
      final result = await toBuyListUseCase.call(NoParams());
      list.value = result;
      isLoading.value = false;
    } catch (e) {
      print(e.toString());
    }
  }
}
