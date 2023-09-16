import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHeader extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final IconData icon;
  final Color color1;
  final Color color2;

  const IconHeader({
    super.key,
    required this.titulo,
    required this.subtitulo,
    required this.icon,
    this.color1 = Colors.blueGrey,
    this.color2 = Colors.blue,
  });

  // late Color colorWhite = Colors.white.withOpacity(0.7);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _IconHeaderBackground(
        color1: color1,
        color2: color2,
      ),
      Positioned(
        top: -35,
        left: -55,
        child: FaIcon(
          FontAwesomeIcons.plus,
          size: 200,
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      Column(
        children: [
          const SizedBox(
            height: 60,
            width: double.infinity,
          ),
          Text(
            subtitulo,
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FaIcon(
            icon,
            size: 70,
            color: Colors.white,
          ),
        ],
      )
    ]);
  }
}

class _IconHeaderBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  const _IconHeaderBackground({
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(100)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            color1,
            color2,
          ],
        ),
      ),
    );
  }
}
