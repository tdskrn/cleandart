import 'package:cleandart/layers/domain/entities/carro_entity.dart';
import 'package:cleandart/layers/domain/usecases/get_cars_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  // ele me obriga a dar override no metodo da abstract class
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(
        placa: 'ABC123 ',
        qtdPortas: 4,
        valor: 50000,
      );
    }
    return CarroEntity(
      placa: 'QWE123',
      qtdPortas: 3,
      valor: 20000,
    );
  }
}
