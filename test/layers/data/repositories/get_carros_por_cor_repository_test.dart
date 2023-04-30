import 'package:cleandart/layers/data/dto/carro_dto.dart';
import 'package:cleandart/layers/data/repositories/get_carros_por_cor_repository.dart';
import 'package:cleandart/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    // chamamos a api e ela respondeu um json;

    var json = {
      'placa': 'ABC123',
      'quantidadeDePortas': 2,
      'valorFinal': 1000.00,
    };
    return CarroDto.fromMap(json);
  }
}

void main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();

  // TDD. Primeiro escrevo o teste. Depois implemento o codigo;

  test(
    'Devolva um carro independente da corr',
    () {
      var result = repository('qualquer');

      expect(result, isNotNull);
    },
  );
}
