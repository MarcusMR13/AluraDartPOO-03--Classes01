void main(List<String> arguments) {
  Pessoa pessoa1 = Pessoa(nome: "Lox", peso: 61.5, idade: 22);
  Pessoa pessoa2 = Pessoa(nome: "Lele", peso: 58.5, idade: 17);
  pessoa1.funcMaiorIdade(18);
  pessoa2.funcMaiorIdade(18);
}

//Tipos de Paramêtros

//Posicionais Obrigatórios = só declarar porénm tem que ser na ordem
//Nomeados Opcionais = entre {com null safety} e na hora de chamar tem que declarar aonde. Cor: "Roxo";
//Parametros com "Padrão" =  declara no inicio do parametro. String cor = roxo;
//Modificador "Required" = Opcional Obrigatório required String cor. sem atribuir valores.

class Pessoa {
  String nome;
  double peso;
  int idade;
  bool? isAdulto;

  Pessoa(
      {required this.nome,
      required this.peso,
      required this.idade,
      this.isAdulto});

  void funcMaiorIdade(int maiorIdade) {
    isAdulto = idade >= maiorIdade;

    if (isAdulto == true) {
      print(
          "O(a) $nome tem um peso de $peso kgs e $idade anos, logo é maior de idade.");
    } else {
      print(
          "O(a) $nome tem um peso de $peso kgs e $idade anos, logo é menor de idade.");
    }
  }
}
