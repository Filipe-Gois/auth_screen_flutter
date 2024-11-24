import 'package:flutter/material.dart';
import 'package:tela_login_desafio_flutterando/style/colors.dart';

enum LoginRedeSocial {
  google,
  apple,
  facebook,
}

class ButtonLoginComRedeSocial extends StatelessWidget {
  final LoginRedeSocial tipoLogin;

  const ButtonLoginComRedeSocial({super.key, required this.tipoLogin});

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(white),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tipoLogin == LoginRedeSocial.google
                ? Image.asset(
                    "lib/assets/icons/google_icon.png",
                    width: 30,
                    height: 30,
                  )
                : Icon(
                    color: tipoLogin == LoginRedeSocial.apple
                        ? Colors.black
                        : Colors.blue,
                    tipoLogin == LoginRedeSocial.apple
                        ? Icons.apple
                        : Icons.facebook,
                    size: tipoLogin == LoginRedeSocial.apple ? 37 : 30,
                  ),
            ButtonLoginComRedeSocialText(
              tipoLogin: tipoLogin,
            )
          ],
        ),
      );
}

class ButtonLoginComRedeSocialText extends StatelessWidget {
  final LoginRedeSocial tipoLogin;
  const ButtonLoginComRedeSocialText({super.key, required this.tipoLogin});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          tipoLogin == LoginRedeSocial.apple
              ? "Login with Apple"
              : tipoLogin == LoginRedeSocial.facebook
                  ? "Login with Facebook"
                  : "Login with Google",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: black,
          ),
        ),
      );
}
