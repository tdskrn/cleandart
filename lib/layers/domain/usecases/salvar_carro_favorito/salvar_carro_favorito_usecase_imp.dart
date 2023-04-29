import 'package:cleandart/layers/domain/entities/carro_entity.dart';
import 'package:cleandart/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:cleandart/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
// inversao de dependecias. quem criar uma implementacao dessa classe tera que passar
// ao construtor as dependencias necessarias
  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();

    return await _salvarCarroFavoritoRepository(carroEntity);

    // postergo minhas escolhas
  }
}
