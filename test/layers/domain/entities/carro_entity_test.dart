import 'dart:math';

import 'package:cleandart/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity entity = CarroEntity(
      placa: 'abc123',
      qtdPortas: 2,
      valor: 10000,
    );
    expect(entity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity entity = CarroEntity(
      placa: 'abc123',
      qtdPortas: 2,
      valor: 10000,
    );
    expect(entity.qtdPortas, 2);
  });
  test('Espero que o valor real seja 2000', () {
    CarroEntity entity = CarroEntity(
      placa: 'abc123',
      qtdPortas: 2,
      valor: 1000,
    );

    var resultadoEsperado = 2000;
    expect(entity.valorReal, resultadoEsperado);
  });
  test('Espero que o valor real seja 0', () {
    CarroEntity entity = CarroEntity(
      placa: 'abc123',
      qtdPortas: 0,
      valor: 1000,
    );

    var resultadoEsperado = 0;
    expect(entity.valorReal, resultadoEsperado);
  });
  test('Espero que o valor real seja 30000', () {
    CarroEntity entity = CarroEntity(
      placa: 'abc123',
      qtdPortas: 2,
      valor: 15000.00,
    );

    entity.setLogica();
    var resultadoEsperado = 30000.00;
    expect(entity.valor, resultadoEsperado);
  });
}
