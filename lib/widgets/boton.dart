import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Boton extends StatelessWidget {
  final IconData icon;
  final Color colorIcon;
  final IconData smallIcon;
  final Color colorSmallIcon;
  final String text;
  final Color colorText;
  final Color colorGradientOne;
  final Color colorGradientTwo;
  final GestureTapCallback onPress;

  const Boton({
    super.key,
    required this.icon,
    required this.colorIcon,
    required this.smallIcon,
    required this.colorSmallIcon,
    required this.text,
    required this.colorText,
    required this.colorGradientOne,
    required this.colorGradientTwo,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Stack(
        children: [
          _BotonBackground(icon, colorIcon, colorGradientOne, colorGradientTwo),
          FadeInLeft(
            animate: true,
            child: _Boton(
                smallIcon: smallIcon,
                colorSmallIcon: colorSmallIcon,
                text: text,
                colorText: colorText),
          )
        ],
      ),
    );
  }
}

class _Boton extends StatelessWidget {
  const _Boton({
    required this.smallIcon,
    required this.colorSmallIcon,
    required this.text,
    required this.colorText,
  });

  final IconData smallIcon;
  final Color colorSmallIcon;
  final String text;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 140,
          width: 30,
        ),
        FaIcon(
          smallIcon,
          size: 50,
          color: colorSmallIcon,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: colorText, fontSize: 18),
          ),
        ),
        const FaIcon(
          FontAwesomeIcons.chevronRight,
          color: Colors.white,
        ),
        const SizedBox(
          width: 40,
        ),
      ],
    );
  }
}

class _BotonBackground extends StatelessWidget {
  final IconData icon;
  final Color colorIcon;
  final Color colorGradientOne;
  final Color colorGradientTwo;

  const _BotonBackground(
      this.icon, this.colorIcon, this.colorGradientOne, this.colorGradientTwo);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            colorGradientOne,
            colorGradientTwo,
          ],
        ),
        borderRadius: BorderRadius.circular(
          15,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4, 6),
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
                right: -20,
                top: -20,
                child: FaIcon(
                  icon,
                  size: 150,
                  color: colorIcon.withOpacity(0.2),
                ))
          ],
        ),
      ),
    );
  }
}
