import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failures.dart';
import 'package:todo_app/feature/domain/entities/login_entity.dart';

abstract class LoginRepository
{
  Future<Either<Failure, LoginEntity>> LoginUseCase();
}





// class LoginRepositoryImp1 implements LoginRepository
// {
//   final LoginDataSource loginDataSource;
//
//   LoginRepositoryImp1(this.loginDataSource);
//
//   @override
//   Future<String> login(LoginModel user) async {
//     try {
//       final result = await loginDataSource.login(LoginModel(user.phone, user.password));
//       debugPrint(result);
//       return result;
//     } on Exception catch (e) {
//       throw Exception("Login Repository: $e");
//     } catch (e) {
//       throw Exception('Unexpected error: $e');
//     }
//
//   }
// }