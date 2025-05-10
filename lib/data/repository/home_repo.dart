import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/models/all_categories/all_categories.dart';
import 'package:furniswap/data/models/auth/register.response.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<AllCategories>>> FetchallCategories();
  Future<Either<Failure, Register>> registerUser(Map<String, dynamic> data);
}
