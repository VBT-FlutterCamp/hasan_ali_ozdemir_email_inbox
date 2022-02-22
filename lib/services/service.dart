import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:main_screen_homework/models/todo.dart';

class ServiceHelper {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/todos");

  getTodos()async{
    var _response = await http.get(url);
    var _decodedResponses = convert.jsonDecode(_response.body) as List;
    List<ToDo> _todos = List<ToDo>.generate(_decodedResponses.length, (index){
      return ToDo.fromJson(_decodedResponses[index]);
    });
    return _todos;
  }
}