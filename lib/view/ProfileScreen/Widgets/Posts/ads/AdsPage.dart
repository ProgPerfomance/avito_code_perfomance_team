import 'package:flutter/material.dart';

import '../../../../Widgets/PostsCards/AdsPost.dart';

class AdsPage extends StatefulWidget {
  const AdsPage({super.key});

  @override
  State<AdsPage> createState() => _AdsPageState();
}

class _AdsPageState extends State<AdsPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(3.5),
            child: AdsPostCard(),
          );
        },
        itemCount: 10,
        addRepaintBoundaries: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 6 / 10,
        ),
      ),
    );
  }
}
