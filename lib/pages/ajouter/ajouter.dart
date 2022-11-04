import 'package:flutter/material.dart';

class AjouterWidget extends StatelessWidget {
  const AjouterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          "Ajouter de Post",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
