import 'package:bola_magica_ia/Views/initial_view.dart';
import 'package:bola_magica_ia/Views/pantalla_contenedora.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'API/serviciogpt.dart';
import 'bloc/magic_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => MagicBloc(ServicioApi()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PantallaContenedora(),
      ),
    ),
  );
}