part of 'magic_bloc.dart';

sealed class MagicEvent extends Equatable {
  const MagicEvent();

  @override
  List<Object> get props => [];
}

class ObtenerRespuestaEvent extends MagicEvent{
  final String pregunta;

  const ObtenerRespuestaEvent(this.pregunta);

  @override
  List<Object> get props => [pregunta];
}
class ReiniciarEvent extends MagicEvent {
  const ReiniciarEvent();

  @override
  List<Object> get props => [];
}