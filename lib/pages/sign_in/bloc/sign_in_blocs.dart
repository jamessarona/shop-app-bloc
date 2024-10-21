import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/pages/sign_in/bloc/sign_in_events.dart';
import 'package:shop_app/pages/sign_in/bloc/sign_in_states.dart';

class SignInBlocs extends Bloc<SignInEvents, SignInState> {
  SignInBlocs() : super(const SignInState()) {
    on<EmailEvent>((event, state) {});
    on<PasswordEvent>((event, state) {});
  }
}
