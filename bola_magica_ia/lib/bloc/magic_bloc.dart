import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../API/serviciogpt.dart';
import '../API/respuestagpt.dart';

part 'magic_event.dart';
part 'magic_state.dart';

class MagicBloc extends Bloc<MagicEvent, MagicState> {
  final ServicioApi servicioApi;

  MagicBloc(this.servicioApi) : super(MagicInitial()) {
    on<ObtenerRespuestaEvent>((event, emit) async {
      emit(MagicLoading());
      try {
        final respuesta = await servicioApi.obtenerRespuesta(event.pregunta);
        emit(MagicSuccess(respuesta.mensaje));
      } catch (e) {
        emit(MagicFailure("Error al obtener respuesta: $e"));
      }
    });
  }
}
