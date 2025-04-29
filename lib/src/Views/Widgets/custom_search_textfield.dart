import 'package:flutter/material.dart';

class CustomSearchTextfield extends StatelessWidget {
  final TextEditingController textEditingController;
  const CustomSearchTextfield({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return  TextField(
                controller:textEditingController ,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.white)
                ),
                style: const TextStyle(color: Colors.white, fontSize: 20.0),
              );
  }
}