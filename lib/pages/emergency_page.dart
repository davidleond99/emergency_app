import 'package:emergency_app/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IconHeader(
        icon: FontAwesomeIcons.circlePlus,
        subtitulo: 'Haz solicitado',
        titulo: 'Asistencia Médica',
        // color1: Colors.green,
        // color2: Colors.blue,
      ),
    );
  }
}
