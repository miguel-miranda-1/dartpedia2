class Atividade {
    Atividade ({
      this.preco,
      this.frete,
      this.categoria,
      this.imagemUrl,
      this.avaliacao,
      required this.title,
      required this.descricao,
      required this.favoritar,
      required this.nomeProduto,
      required this.vendedor,
      required this.verificado,
      required this.legenda,
      required this.dataPublicacao,
      required this.estadoProduto,
      required this.localizacao,
      required this.negociavel,
      required this.visualizacoes,

    });
  String title;
  double? preco;
  String? frete;
  String? categoria;
  String descricao;
  String nomeProduto;
  String vendedor;
  bool verificado;
  bool favoritar;
  String legenda;
  String? imagemUrl;
  DateTime dataPublicacao;
  int visualizacoes; 
  String localizacao;
  String estadoProduto;
  bool negociavel;
  double? avaliacao;  
}