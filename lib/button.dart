import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function() fn;

  Button(this.text, this.fn);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: fn, 
        child: Text(text)
      ),
    );
  }
}