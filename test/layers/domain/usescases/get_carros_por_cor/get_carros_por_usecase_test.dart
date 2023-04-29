import 'package:cleandart/layers/domain/entities/carro_entity.dart';
import 'package:cleandart/layers/domain/usecases/get_cars_por_cor/get_carros_por_cor_usecase.dart';
import 'package:cleandart/layers/domain/usecases/get_cars_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar uma instancia de carro passando qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();
    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });
  test('Deve retornar um carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();
    var result = useCase('vermelho');

    expect(result.qtdPortas, 4);
  });
  test('Deve retornar um carro de 3 portas com qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();
    var result = useCase('verde');

    expect(result.qtdPortas, 3);
  });
}
