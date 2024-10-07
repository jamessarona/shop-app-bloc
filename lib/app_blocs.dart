import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/app_events.dart';
import 'package:shop_app/app_states.dart';

class AppBlocs extends Bloc<AppEvents, AppStates> {
  AppBlocs() : super(InitStates()) {
    on<Increment>((event, serve) {
      serve(AppStates(counter: state.counter + 1));
    });
    on<Decrement>((event, serve) {
      serve(AppStates(counter: state.counter - 1));
    });
  }
}
