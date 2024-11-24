// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({
    super.key,
    required this.label,
    required this.keyboardType,
  });

  final String label;
  final TextInputType keyboardType;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.blue,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        labelText: widget.label,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 2, color: Colors.black),
        ),
      ),
    );
  }
}
