import 'package:flutter/material.dart';

class CommentaireWidget extends StatelessWidget {
  const CommentaireWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: const Center(
        child: Text("Commentaire"),
      ),
    );
  }
}
