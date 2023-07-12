import 'package:flutter/material.dart';

import '../../../../Widgets/PostsCards/SummaryPost.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.6,
        child: ListView.builder(itemBuilder: (context, index) {
          return const SummaryPostCard();
        }));
  }
}
