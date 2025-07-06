import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'magic_event.dart';
part 'magic_state.dart';

class MagicBloc extends Bloc<MagicEvent, MagicState> {
  MagicBloc() : super(MagicInitial()) {
    on<MagicEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
