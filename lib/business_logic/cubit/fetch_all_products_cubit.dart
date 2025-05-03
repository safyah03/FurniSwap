import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_all_products_state.dart';

class FetchAllProductsCubit extends Cubit<FetchAllProductsState> {
  FetchAllProductsCubit() : super(FetchAllProductsInitial());
}
