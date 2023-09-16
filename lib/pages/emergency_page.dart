import 'package:emergency_app/widgets/boton.dart';
import 'package:emergency_app/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {
  final IconData icon;
  final IconData smallIcon;
  final String text;
  final Color colorText;
  final Color colorIcon;
  final Color colorSmallIcon;
  final Color colorGradientOne;
  final Color colorGradientTwo;

  ItemBoton(
      {required this.icon,
      required this.smallIcon,
      required this.text,
      required this.colorText,
      required this.colorIcon,
      required this.colorSmallIcon,
      required this.colorGradientOne,
      required this.colorGradientTwo});
}

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <ItemBoton>[
      ItemBoton(
        icon: FontAwesomeIcons.carBurst,
        smallIcon: FontAwesomeIcons.carBurst,
        text: 'Motor Accident',
        colorText: Colors.white,
        colorIcon: Colors.white,
        colorSmallIcon: Colors.white,
        colorGradientOne: Colors.blue,
        colorGradientTwo: Colors.blueGrey,
      ),
      ItemBoton(
        icon: FontAwesomeIcons.plus,
        smallIcon: FontAwesomeIcons.plus,
        text: 'Medical Emergency',
        colorText: Colors.white,
        colorIcon: Colors.white,
        colorSmallIcon: Colors.white,
        colorGradientOne: Colors.purple,
        colorGradientTwo: Colors.purpleAccent,
      ),
      ItemBoton(
        icon: FontAwesomeIcons.masksTheater,
        smallIcon: FontAwesomeIcons.masksTheater,
        text: 'Theft / Harrasement',
        colorText: Colors.white,
        colorIcon: Colors.white,
        colorSmallIcon: Colors.white,
        colorGradientOne: Colors.red,
        colorGradientTwo: Colors.yellow,
      ),
      ItemBoton(
        icon: FontAwesomeIcons.personBiking,
        smallIcon: FontAwesomeIcons.personBiking,
        text: 'Awards',
        colorText: Colors.white,
        colorIcon: Colors.white,
        colorSmallIcon: Colors.white,
        colorGradientOne: Colors.green,
        colorGradientTwo: Colors.transparent,
      ),
    ];

    List<Widget> itemMap = items
        .map(
          (item) => Boton(
            icon: item.icon,
            colorIcon: item.colorIcon,
            smallIcon: item.smallIcon,
            colorSmallIcon: item.colorSmallIcon,
            text: item.text,
            colorText: item.colorText,
            colorGradientOne: item.colorGradientOne,
            colorGradientTwo: item.colorGradientTwo,
            onPress: () => {},
          ),
        )
        .toList();

    return Scaffold(
      // body: PageHeader(),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 200),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(
                  height: 80,
                ),
                ...itemMap,
              ],
            ),
          ),
          const IconHeader(
            titulo: 'Asistencia Médica',
            subtitulo: 'Haz solicitado',
            icon: FontAwesomeIcons.circlePlus,
          ),
        ],
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IconHeader(
      icon: FontAwesomeIcons.circlePlus,
      subtitulo: 'Haz solicitado',
      titulo: 'Asistencia Médica',
      // color1: Colors.green,
      // color2: Colors.blue,
    );
  }
}
