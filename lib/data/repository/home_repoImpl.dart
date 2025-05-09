import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/models/furni_model.dart';
import 'package:furniswap/data/repository/home_repo.dart';

class HomeRepoimpl implements HomeRepo {
  @override
  Future<Either<Failure, List<FurniModel>>> fetchFeaturedItems() {
    // TODO: implement fetchFeaturedItems
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<FurniModel>>> fetchSwapSuggetion() {
    // TODO: implement fetchSwapSuggetion
    throw UnimplementedError();
  }
}
