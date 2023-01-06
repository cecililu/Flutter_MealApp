import 'dart:ui';

import 'package:flutter/material.dart';

class Categoryitem extends StatelessWidget {
  final Color color;
  final String title;
  const Categoryitem({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(12),
        ));
  }
}
