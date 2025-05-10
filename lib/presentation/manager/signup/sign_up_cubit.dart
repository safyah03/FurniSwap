import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furniswap/data/models/auth/register.response.dart';
import 'package:furniswap/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final HomeRepo homeRepo;

  SignUpCubit(this.homeRepo) : super(SignUpInitial());

  Future<void> registerUser(Map<String, dynamic> data) async {
    emit(SignUpLoading());

    final Either<Failure, Register> result = await homeRepo.registerUser(data);

    result.fold(
      (failure) {
        emit(SignUpFailure(failure is ServerFailure
            ? failure.message
            : 'Something went wrong'));
      },
      (register) {
        emit(SignUpSuccess(register));
      },
    );
  }
}
