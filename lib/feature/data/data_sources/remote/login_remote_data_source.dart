import 'package:todo_app/feature/domain/entities/login_entity.dart';

abstract class LoginRemoteDataSource
{
  Future<LoginEntity> LoginUseCase();
}












/*
class LoginDataSource {
  Future<String> login(LoginModel data) async {
    final request = await http.post(
      Uri.parse('https://todo.iraqsapp.com/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data.toJson()),
    );
    if (request.statusCode == 200 || request.statusCode == 201)
      {
        final data = json.decode(request.body);
        debugPrint(data['token']);
        return data['token'];
      } else {
      debugPrint('login data source ${request.body}');
      return 'login data source ${request.body}';

    }
  }
}
 */