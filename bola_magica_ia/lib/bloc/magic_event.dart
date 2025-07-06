part of 'magic_bloc.dart';

sealed class MagicEvent extends Equatable {
  const MagicEvent();

  @override
  List<Object> get props => [];
}

class ObtenerRespuestaEvent extends MagicEvent{}