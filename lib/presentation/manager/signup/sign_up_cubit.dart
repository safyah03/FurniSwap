import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furniswap/data/models/auth/register.response.dart';
import 'package:dartz/dartz.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/repository/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;

  SignUpCubit(this.authRepo) : super(SignUpInitial());

  Future<void> registerUser(Map<String, dynamic> data) async {
    emit(SignUpLoading());

    final Either<Failure, Register> result = await authRepo.registerUser(data);

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
