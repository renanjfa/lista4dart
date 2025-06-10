
class Produto {
  String codigo;
  String nome;
  double preco;
  int serie;
  static int numeroSerie = 1;

  Produto({
    required this.codigo,
    required this.nome,
    required this.preco,
  }) : serie = numeroSerie {
    numeroSerie++;
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

  void printProduto() {
    print("--- Produto $serie ---\nCodigo: $codigo\nNome: $nome\nPreco: $preco reais\n");
  }

}

void main() {

  List<Produto> produtos = [];
  Produto p1 = Produto(codigo: "12345", nome: "Smatphone Modelo X", preco: 199.90);
  Produto p2 = Produto(codigo: "67890", nome: "Fone de Ouvido Bluetooth", preco: 299.50);

  produtos.add(p1); produtos.add(p2);

  for(var i in produtos) {
    i.printProduto();
  }

}