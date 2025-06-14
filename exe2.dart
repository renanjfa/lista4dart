
class Produto {
  String codigo;
  String nome;
  double preco;
  int serie;
  bool descontado;
  double desconto;
  static int totalProdutos = 0;

  Produto({
    required this.codigo,
    required this.nome,
    required this.preco,
  }) : serie = totalProdutos+1, descontado = false, desconto = 0 {
    totalProdutos++;
  }


  String getCodigo() {
    return this.codigo;
  }

  String getNome() {
    return this.nome;
  }

  double getPreco() {
    return this.preco;
  }

  void exibirDetalhes() {
    print("--- Produto $serie ---\nCodigo: $codigo\nNome: $nome\nPreco: $preco reais");
    if(descontado) 
      print("Desconto de $desconto% aplicado ao produto");
    print("");
  }

  aplicarDesconto(double percentual) {
    double desconto = 1 - percentual/100;
    this.preco = preco * desconto;
    this.descontado = true;
    this.desconto = percentual;
  }

  static void exibirTotalProdutos() {
    print("Total de produtos criados: $totalProdutos");
  }

}

void main() {

  Produto p1 = Produto(codigo: "12345", nome: "Smatphone Modelo X", preco: 199.90);

  p1.exibirDetalhes();

  p1.aplicarDesconto(15);

  p1.exibirDetalhes();

  Produto.exibirTotalProdutos();
}