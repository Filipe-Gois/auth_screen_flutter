import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  const InputPassword({super.key});

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            obscureText: obscureText,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: Colors.black),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.blue),
              ),
              suffixIcon: GestureDetector(
                  onTap: () => {
                        setState(() {
                          obscureText = !obscureText;
                        })
                      },
                  child: Icon(
                    !obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.blue,
                  )),
              labelText: "Password",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 2, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
