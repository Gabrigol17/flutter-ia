part of 'magic_bloc.dart';

sealed class MagicState extends Equatable {
  const MagicState();
  
  @override
  List<Object> get props => [];
}

final class MagicInitial extends MagicState {}
final class MagicLoading extends MagicState {}
final class MagicSuccess extends MagicState {
  final String respuesta;

  const MagicSuccess(this.respuesta);

  @override
  List<Object> get props => [respuesta];
}
final class MagicFailure extends MagicState {
  final String error;

  const MagicFailure(this.error);

  @override
  List<Object> get props => [error];
}
