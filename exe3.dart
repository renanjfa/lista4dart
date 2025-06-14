
class Produto {
  String _codigo;
  String _nome;
  double _preco;
  int serie;
  bool descontado;
  double desconto;
  static int totalProdutos = 0;

  Produto({
    required String codigo,
    required String nome,
    required double preco,
  })  : serie = totalProdutos + 1,
        descontado = false,
        desconto = 0,
        _codigo = codigo,
        _nome = nome,
        _preco = preco {
    totalProdutos++;
  }

  get codigo {
    return this._codigo;
  }

  get nome {
    return this._nome;
  }

  get preco {
    return this._preco;
  }

  set novoPreco(double novoPreco) {
    if(novoPreco < 0) {
      print("Erro: o preco nao pode ser negativo. Valor de $_preco reais mantido");
    } else {
      this._preco = novoPreco;
    }
  }

  void exibirDetalhes() {
    print("--- Produto $serie ---\n_codigo: $_codigo\n_nome: $_nome\nPreco: $_preco reais");
    if(descontado) 
      print("Desconto de $desconto% aplicado ao produto");
    print("");
  }

  aplicarDesconto(double percentual) {
    double desconto = 1 - percentual/100;
    this._preco = _preco * desconto;
    this.descontado = true;
    this.desconto = percentual;
  }

  static void exibirTotalProdutos() {
    print("Total de produtos criados: $totalProdutos");
  }

}

void main() {

  var produto = Produto(codigo: '777', nome: 'Teclado Mecânico', preco: 350.0);

  // Tentar definir um preço inválido
  produto.novoPreco = -50;

  // Exibir detalhes (deve mostrar o preço original)
  print('Preço atual: R\$ ${produto.preco}'); // Usando o getter
  
  // Tentar definir um preço válido
  produto.novoPreco = 400.0;
  print('Preço atualizado: R\$ ${produto.preco}'); // Usando o getter
}