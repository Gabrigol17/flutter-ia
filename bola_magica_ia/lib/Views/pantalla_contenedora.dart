import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/magic_bloc.dart';
import 'initial_view.dart';
import 'loading_view.dart';
import 'success_view.dart';
import 'failure_view.dart';

class PantallaContenedora extends StatelessWidget {
  const PantallaContenedora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MagicBloc, MagicState>(
        builder: (context, state) {
          if (state is MagicInitial) {
            return const InitialView();
          } else if (state is MagicLoading) {
            return const LoadingView();
          } else if (state is MagicSuccess) {
            return SuccessView(respuesta: state.respuesta);
          } else if (state is MagicFailure) {
            return FailureView(error: state.error);
          } else {
            return const Center(child: Text('Estado desconocido'));
          }
        },
      ),
    );
  }
}

