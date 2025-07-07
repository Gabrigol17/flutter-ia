import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/magic_bloc.dart';

class FailureView extends StatelessWidget {
  final String error;
  const FailureView({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "❌ $error",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red, fontSize: 18),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<MagicBloc>().add(ReiniciarEvent());
            },
            child: const Text("Volver a intentar"),
          )
        ],
      ),
    );
  }
}
