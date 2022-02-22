import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ServiceHelper {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/todos");

  getTodos()async{
    var _response = await http.get(url);
    var _decodedResponse = convert.jsonDecode(_response.body) as List;
    print(_decodedResponse);
    
  }
}