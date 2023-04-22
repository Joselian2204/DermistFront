import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  CustomFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextFormField(
      controller: _controller,
    );
  }
}
