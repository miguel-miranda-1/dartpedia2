import 'title_set.dart';
// Classe
// Atributos - Características, Definições
// Construtores
// Métodos - Ações
class Summary{ // Toda classe tem o mesmo nome do arquivo

 Summary({
    required this.titles,
    required this.pageid,
    required this.extract,
    required this.extractHTML,
    required this.lang,
    required this.dir,
    this.url,
    this.description,
  });

//Definimos os atributos
int pageid;
String extract;
String extractHTML;
String? url;
String lang;
String dir;
String? description;
TitleSet titles;
}