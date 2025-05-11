import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/api_services/api_sevice.dart';
import 'package:furniswap/data/models/auth/register.response.dart';
import 'package:furniswap/data/repository/auth_repo.dart';
import 'package:furniswap/data/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl(this.apiService);

  @override
  Future<Either<Failure, Register>> registerUser(
      Map<String, dynamic> data) async {
    try {
      final response =
          await apiService.post(endPoint: '/auth/signup', data: data);
      final register = Register.fromJson(response);
      return right(register);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
