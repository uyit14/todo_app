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

  var callList = Rxn<List<CallEntity>>();
  var buyList = Rxn<List<BuyEntity>>();

  @override
  void onInit() {
    super.onInit();
    getToCallList();
  }

  navigateToDetail(TODO_TYPE todoType) {
    Get.toNamed(AppRoutes.HOME + AppRoutes.DETAIL, arguments: todoType);
  }

  callApi(TODO_TYPE todoType) {
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
    try {
      final result = await toCallListUseCase.call(NoParams());
      callList.value = result;
    } catch (e) {
      print(e.toString());
    }
  }

  void getToBuyList() async {
    try {
      final result = await toBuyListUseCase.call(NoParams());
      buyList.value = result;
    } catch (e) {
      print(e.toString());
    }
  }
}
