import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/common/db_constants.dart';
import 'package:todo_app/infrastructure/models/hive_sell_model.dart';

import '../../domain/entities/entity.dart';
import '../../domain/repositories/repository.dart';
import '../../infrastructure/models/model.dart';
import '../apis/api_connection.dart';
import '../mappers/mapper.dart';

class RepositoryImpl implements Repository {
  final ApiConnection _apiConnection = ApiConnection();

  @override
  Future<List<BuyEntity>> getToBuyList() async {
    final response = await _apiConnection.getBuyList();
    if (response.statusCode == 200) {
      print('getToBuyList: ${response.body}');
      List<BuyModel> buys = List<BuyModel>.from(
          response.body.map((item) => BuyModel.fromJson(item)));
      return Mapper.toBuyEntityList(buys);
    }
    return [];
  }

  @override
  Future<List<CallEntity>> getToCallList() async {
    final response = await _apiConnection.getCallList();
    if (response.statusCode == 200) {
      print('getToCallList: ${response.body}');
      List<CallModel> calls = List<CallModel>.from(
          response.body.map((item) => CallModel.fromJson(item)));
      return Mapper.toCallEntityList(calls);
    }
    return [];
  }

  @override
  Future<List<BuyEntity>> getToSellList() async {
    final box = Hive.box<HiveSellModel>(DbConstants.DB_NAME);
    print('getToSellList: ${box.values.toList().length}');
    return Mapper.toBuyEntityList(box.values.toList());
  }

  @override
  Future<bool> saveToBuy(List<BuyEntity> entities) async {
    try {
      final box = Hive.box<HiveSellModel>(DbConstants.DB_NAME);
      box.addAll(Mapper.toHiveSellsModel(entities));
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
