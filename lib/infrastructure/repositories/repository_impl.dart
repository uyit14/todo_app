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
    return [];
  }

  @override
  Future<bool> saveToBuy(BuyEntity entity) async {
    return true;
  }
}
