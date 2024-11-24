import 'package:flutter/material.dart';
import 'package:tela_login_desafio_flutterando/components/button_component.dart';
import 'package:tela_login_desafio_flutterando/components/login_form.dart';
import 'package:tela_login_desafio_flutterando/components/title_component.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TitleComponent(
                      text: "Welcome to SO.",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //botoes de login com redes sociais
                    Column(
                      children: [
                        const ButtonLoginComRedeSocial(
                          tipoLogin: LoginRedeSocial.google,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const ButtonLoginComRedeSocial(
                          tipoLogin: LoginRedeSocial.apple,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const ButtonLoginComRedeSocial(
                          tipoLogin: LoginRedeSocial.facebook,
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "or by email",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 28),
                        const LoginForm(),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Create an account",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue[500],
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.blue[500],
                                  decorationThickness: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
