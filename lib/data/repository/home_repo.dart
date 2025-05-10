import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/models/furni_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<FurniModel>>> FetchAllProducts();
  Future<Either<Failure, List<FurniModel>>> fetchSwapSuggetion();
}
