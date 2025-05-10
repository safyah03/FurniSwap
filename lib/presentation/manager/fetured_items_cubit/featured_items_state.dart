part of 'featured_items_cubit.dart';

@immutable
sealed class FeaturedItemsState {}

final class FeaturedItemsInitial extends FeaturedItemsState {}

final class FeaturedItemsLoading extends FeaturedItemsState {}

final class FeaturedItemsFailure extends FeaturedItemsState {
  final String errMessage;

  FeaturedItemsFailure(this.errMessage);
}

final class FeaturedItemsSuccess extends FeaturedItemsState {
  final List<FurniModel> furni;

  FeaturedItemsSuccess(this.furni);
}
