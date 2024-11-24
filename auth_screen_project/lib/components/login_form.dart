import 'package:flutter/material.dart';
import 'package:tela_login_desafio_flutterando/components/input_password.dart';
import 'package:tela_login_desafio_flutterando/components/input_widget.dart';
import 'package:tela_login_desafio_flutterando/style/colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const InputWidget(
            keyboardType: TextInputType.emailAddress,
            label: "Email Address",
          ),
          const SizedBox(height: 20),
          const InputPassword(),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: blue,
              ),
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
