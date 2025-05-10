import 'package:bloc/bloc.dart';
import 'package:furniswap/data/models/furni_model.dart';
import 'package:meta/meta.dart';

part 'featured_items_state.dart';

class FeaturedItemsCubit extends Cubit<FeaturedItemsState> {
  FeaturedItemsCubit() : super(FeaturedItemsInitial());
}
