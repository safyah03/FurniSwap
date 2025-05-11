import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/models/auth/register.response.dart';

abstract class AuthRepo {
  Future<Either<Failure, Register>> registerUser(Map<String, dynamic> data);
  Future<Either<Failure, String>> verifyOtp(
      {required String email, required String otp});
}
