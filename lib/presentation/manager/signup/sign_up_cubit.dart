import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniswap/core/errors/failures.dart';
import 'package:furniswap/data/models/auth/register.response.dart';
import 'package:furniswap/data/repository/auth_repo.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;

  SignUpCubit(this.authRepo) : super(SignUpInitial());

  Future<void> registerUser(Map<String, dynamic> data) async {
    emit(SignUpLoading());
    final result = await authRepo.registerUser(data);
    result.fold(
      (failure) => emit(SignUpFailure(
          failure is ServerFailure ? failure.message : 'Something went wrong')),
      (register) => emit(SignUpSuccess(register)),
    );
  }

  Future<void> verifyOtp({required String email, required String otp}) async {
    emit(SignUpLoading());
    final result = await authRepo.verifyOtp(email: email, otp: otp);
    result.fold(
      (failure) => emit(SignUpFailure(failure is ServerFailure
          ? failure.message
          : 'OTP Verification Failed')),
      (message) => emit(OtpVerifiedSuccess(message)),
    );
  }
}
