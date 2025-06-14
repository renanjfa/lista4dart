import 'exe1.dart';

class CarrinhoDeCompras {
    List<Produto> produtos = [];

    CarrinhoDeCompras();

    void adicionarProduto(Produto p) {
      this.produtos.add(p);
    }

    double calcularTotal() {
      double total = 0;
      for(var i in produtos) {
        total = total + i.preco;
      }
      return total;
    }

    void exibirCarrinho() {
      print("--- Itens no Carrinho ---");
      for(var i in produtos) {
        String nome = i.nome;
        double preco = i.preco;
        print("- $nome: R\$ $preco");
      }
      print("-----------------------");
      double totalPreco = calcularTotal();
      print("Total do Carrinho: R\$ $totalPreco");
    }
}

void main() {
    var p1 = Produto(codigo: '111', nome: 'Mouse Gamer', preco: 150.0);
    var p2 = Produto(codigo: '222', nome: 'Monitor 24"', preco: 950.0);
    var p3 = Produto(codigo: '333', nome: 'Cadeira Gamer', preco: 1200.0);
    var carrinho = CarrinhoDeCompras();
    carrinho.adicionarProduto(p1);
    carrinho.adicionarProduto(p2);
    carrinho.adicionarProduto(p3);
    carrinho.exibirCarrinho();
}