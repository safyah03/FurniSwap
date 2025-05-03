import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_all_products_event.dart';
part 'fetch_all_products_state.dart';

class FetchAllProductsBloc extends Bloc<FetchAllProductsEvent, FetchAllProductsState> {
  FetchAllProductsBloc() : super(FetchAllProductsInitial()) {
    on<FetchAllProductsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
