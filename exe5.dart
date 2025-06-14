import 'exe3.dart';

class ProdutoEletronico extends Produto {
  late int _garantiaMeses;

  ProdutoEletronico({
    required String codigo,
    required String nome,
    required double preco,
    required int garantia,
  }) : super.criar(codigo: codigo, nome: nome, preco: preco) {
    _garantiaMeses = garantia;
  }

  int get garantia => _garantiaMeses;

  void exibirDetalhes() {
    print("--- Detalhes do Produto ---\nCodigo: $codigo\nNome: $nome\nPreco: $preco reais\nGarantia: $_garantiaMeses meses");
    if(descontado) 
      print("Desconto de $desconto% aplicado ao produto");
    print("");
  }
}

class ProdutoAlimenticio extends Produto {
  late String _dataValidade;

  ProdutoAlimenticio({
    required String codigo,
    required String nome,
    required double preco,
    required String dataValidade,
  }) : super.criar(codigo: codigo, nome: nome, preco: preco) {
    _dataValidade = dataValidade;
  }

  String get data => _dataValidade;

  void exibirDetalhes() {
    print("--- Detalhes do Produto ---\nCodigo: $codigo\nNome: $nome\nPreco: $preco reais\nData de validade: $_dataValidade");
    if(descontado) 
      print("Desconto de $desconto% aplicado ao produto");
    print("");
  }
}

void main() {
  var eletronico = ProdutoEletronico(codigo: 'E01', nome: 'Smart TV 50"', preco: 2800.0, garantia: 12);
  var alimento = ProdutoAlimenticio(codigo: 'A01', nome: 'Caixa de Leite', preco: 4.50, dataValidade: '25/12/2025');

  eletronico.exibirDetalhes();
  alimento.exibirDetalhes();
}