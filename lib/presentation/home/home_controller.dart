import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:todo_app/common/app_routes.dart';
import 'package:todo_app/domain/entities/buy_entity.dart';

import '../../domain/usecases/usecase.dart';

enum TODO_TYPE { call, buy, sell }

class HomeController extends GetxController {
  ToCallListUseCase toCallListUseCase;
  ToBuyListUseCase toBuyListUseCase;
  ToSellListUseCase toSellListUseCase;
  SaveToBuyUseCase saveToBuyUseCase;

  HomeController(
      {required this.toCallListUseCase,
      required this.toBuyListUseCase,
      required this.toSellListUseCase,
      required this.saveToBuyUseCase});

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
        getToSellList();
        break;
    }
  }

  void getToCallList() async {
    try {
      final result = await toCallListUseCase.call(NoParams());
      list.value = result;
      list.value = result;
      isLoading.value = false;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void getToBuyList() async {
    try {
      final result = await toBuyListUseCase.call(NoParams());
      list.value = result;
      isLoading.value = false;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void getToSellList() async {
    try {
      final result = await toSellListUseCase.call(NoParams());
      if (result.isEmpty) {
        //at first time, if don't have sells data in the local db
        // -> save initialList
        var initialList = [
          BuyEntity(
              id: 1, name: "iPhoneX", price: 150000, quantity: 1, type: 2),
          BuyEntity(id: 2, name: "TV", price: 38000, quantity: 2, type: 2),
          BuyEntity(id: 3, name: "Table", price: 12000, quantity: 1, type: 2)
        ];
        final saveResult = await saveToBuyUseCase.call(initialList);
        if (saveResult) {
          list.value = initialList;
          isLoading.value = false;
        }
      } else {
        list.value = result;
        isLoading.value = false;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
