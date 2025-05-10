import 'package:bloc/bloc.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/models/all_categories/all_categories.dart';
import 'package:furniswap/data/repository/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_items_state.dart';

class FeaturedItemsCubit extends Cubit<FeaturedItemsState> {
  FeaturedItemsCubit(this.homeRepo) : super(FeaturedItemsInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedItems() async {
    var result = await homeRepo.FetchAllProducts();
    result.fold((Failure) {
      emit(FeaturedItemsFailure("Error"));
    }, (furni) {
      emit(FeaturedItemsSuccess(furni));
    });
  }
}
