// DTO Data Transfer Object
import 'package:cleandart/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  // entidade tem que ser modelada de acordo com a api
  String placa;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          valor: valorFinal,
          qtdPortas: quantidadeDePortas,
          placa: placa,
        );

  toMap() {
    return {
      'placa': this.placa,
      'quantidadeDePortas': this.quantidadeDePortas,
      'valorFinal': this.valorFinal,
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
        placa: map['placa'],
        quantidadeDePortas: map['quantidadeDePortas'],
        valorFinal: map['valorFinal']);
  }
}
