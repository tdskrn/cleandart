import 'package:cleandart/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorRepository {
  CarroEntity call(String cor);
}
