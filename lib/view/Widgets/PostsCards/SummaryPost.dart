import 'package:flutter/material.dart';

class SummaryPostCard extends StatefulWidget {
  const SummaryPostCard({super.key});

  @override
  State<SummaryPostCard> createState() => _SummaryPostCardState();
}

class _SummaryPostCardState extends State<SummaryPostCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
        ),
      ),
    );;
  }
}
