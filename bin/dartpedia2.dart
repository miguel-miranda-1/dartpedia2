import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:http/http.dart' as http;
import 'package:command_`runner/commmand.dart';

const version = '0.0.1'; // Global

// Método Principal
void main(List<String> arguments)async{
  var runner = CommandRunner();
  await runner = CommandRunner();
  // if(arguments.isEmpty || arguments.first == 'help'){
  //   printUsage();
  // } else if (arguments.first == 'version'){
  //   print ('Dartpedia CLI - versão $version');
  // } else if (arguments.first == 'search'){
  //   final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
  //   searchWikipedia(inputArgs);
  // }else{
  //   printUsage();
  // }
}

void printUsage(){
  print("Comandos Válidos: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

// ? - Pode ou não receber valores
void searchWikipedia(List<String>? arguments) async{
  final String? tituloArtigo;

  if ( arguments == null || arguments.isEmpty){
    print('Por Favor, forneça um assunto:');
    final inputStdin = stdin.readLineSync();
    if (inputStdin == null || inputStdin.isEmpty){
      print('Erro, pesquisa em branco.');
      return;
    }
    tituloArtigo = inputStdin;
  } else {
    tituloArtigo = arguments.join(' ');
  }
  print('Procurando artigos sobre "$tituloArtigo". Aguarde.');
  var conteudoArtigo = await (getWikipediaArticle((tituloArtigo)));
  print('Aqui está!');
  print(conteudoArtigo);
}

Future<String> getWikipediaArticle(String tituloArtigo) async{
  final url = Uri.https('en.wikipedia.org',
  'api/rest_v1/page/summary/$tituloArtigo',
  );
  final response = await http.get(url); // await - enquanto o comando não for executado por completo, o código não é continuado.

  if(response.statusCode == 200){
    return response.body;
  }
  return 'Erro: falha ao acessar o $tituloArtigo';
}