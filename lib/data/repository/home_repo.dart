import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/models/all_categories/all_categories.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<AllCategories>>> FetchAllProducts();
  Future<Either<Failure, List<AllCategories>>> fetchSwapSuggetion();
}
