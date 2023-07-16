import 'package:flutter/material.dart';

class CircleRatingWidget extends StatefulWidget {
  const CircleRatingWidget({super.key});

  @override
  State<CircleRatingWidget> createState() => _CircleRatingWidgetState();
}

class _CircleRatingWidgetState extends State<CircleRatingWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Stack(alignment: Alignment.center,children: [
        SizedBox(
          height: 30,
          width: 30,
        ),
      ],
      ),
    );
  }
}

