// Representa algo do mundo real.

class CarroEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  // regra de negócio que não depende de arquivo de terceiros

  double get valorReal {
    return valor * qtdPortas;
  }

  setLogica() {
    if (valorReal > 10000.00) {
      valor *= 2;
    }
  }
}
