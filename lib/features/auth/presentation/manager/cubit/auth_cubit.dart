import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:marketly/features/auth/data/models/auth_response.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
