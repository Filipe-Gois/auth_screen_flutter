import 'package:flutter/material.dart';
import 'package:tela_login_desafio_flutterando/style/colors.dart';

class TitleComponent extends StatelessWidget {
  final String text;
  const TitleComponent({super.key, required this.text});

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: const TextStyle(
            fontSize: 30, color: black, fontWeight: FontWeight.w900),
      );
}
