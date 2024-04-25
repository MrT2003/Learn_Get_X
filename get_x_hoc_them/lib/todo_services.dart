import 'dart:convert';

import 'package:http/http.dart' as http;

class TodoService {
  Future<List<TodoModel>> getAll() async {
    const url = 'https://jsonplaceholder.typicode.com/todos';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final todos = json.map((e) => TodoModel.fromJson(e)).toList();
      return todos;
    }
    return [];
  }
}
