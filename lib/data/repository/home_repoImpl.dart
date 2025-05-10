import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/api_services/api_sevice.dart';
import 'package:furniswap/data/models/all_categories/all_categories.dart';
import 'package:furniswap/data/models/auth/register.response.dart';
import 'package:furniswap/data/repository/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<AllCategories>>> FetchallCategories() async {
    try {
      final data = await apiService.get(endPoint: '/product/all');

      if (data['status'] == 'success' &&
          data['message'] == 'No products found') {
        return right([]);
      }

      if (data['data'] is List) {
        List<AllCategories> furni = (data['data'] as List)
            .map((item) => AllCategories.fromJson(item))
            .toList();

        return right(furni);
      }

      return left(ServerFailure(message: 'Unexpected response format'));
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

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
