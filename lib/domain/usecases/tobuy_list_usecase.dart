import '../entities/entity.dart';
import '../repositories/repository.dart';
import 'base_usecase.dart';

class ToBuyListUseCase implements BaseUseCase<List<BuyEntity>, NoParams> {
  final Repository repository;

  ToBuyListUseCase({required this.repository});

  @override
  Future<List<BuyEntity>> call(NoParams params) async {
    return await repository.getToBuyList();
  }
}
