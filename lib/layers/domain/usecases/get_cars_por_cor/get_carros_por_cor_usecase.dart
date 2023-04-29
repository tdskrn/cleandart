// Import de arquivos da mesma layer
import 'package:cleandart/layers/domain/entities/carro_entity.dart';

// Criação de um contrato. para usar essa função deveremos sobrescrever
// com a responsabilidade de passar a String cor

abstract class GetCarrosPorCorUseCase {
  CarroEntity call(String cor);
}
