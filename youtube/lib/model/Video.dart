class Video {
  String id;
  String titulo;
  String descricao;
  String imagem;
  String canal;

  // static converterJson(Map<String, dynamic> json){
  //   return Video{
  //     id: json["id"]["videoId"],
  //     titulo: json["snippet"]["title"],
  //     imagem: json["snippet"]["thumbnails"]["high"]["url"],
  //     canal: json["snippet"]["channelId"],
  //   };
  // }

  //construtor opcionais
  Video({this.id, this.titulo, this.imagem, this.descricao, this.canal});

  //factory o retorno e de um unico objeto, assim, tendo apenas uma unica insatancia de dados na memoria, mudando apenas os valores
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json["id"]["videoId"],
      titulo: json["snippet"]["title"],
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      canal: json["snippet"]["channelId"],
    );
  }
}
