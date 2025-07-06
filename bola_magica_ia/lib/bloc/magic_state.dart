part of 'magic_bloc.dart';

sealed class MagicState extends Equatable {
  const MagicState();
  
  @override
  List<Object> get props => [];
}

final class MagicInitial extends MagicState {}
final class MagicLoading extends MagicState {}
final class MagicSuccess extends MagicState {}
final class MagicFailure extends MagicState {}