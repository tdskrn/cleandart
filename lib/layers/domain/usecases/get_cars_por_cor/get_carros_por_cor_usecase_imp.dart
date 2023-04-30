import 'package:cleandart/layers/data/repositories/get_carros_por_cor_repository.dart';
import 'package:cleandart/layers/domain/entities/carro_entity.dart';
import 'package:cleandart/layers/domain/usecases/get_cars_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);
  // ele me obriga a dar override no metodo da abstract class
  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
