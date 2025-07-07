import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/magic_bloc.dart';

class SuccessView extends StatelessWidget {
  final String respuesta;
  const SuccessView({super.key, required this.respuesta});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          respuesta,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            context.read<MagicBloc>().add(ReiniciarEvent());
          },
          child: const Text("Volver a preguntar"),
        )
      ],
    );
  }
}
