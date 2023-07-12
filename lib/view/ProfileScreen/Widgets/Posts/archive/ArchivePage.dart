import 'package:flutter/material.dart';

import '../../../../Widgets/PostsCards/AdsPost.dart';

class ArchivePage extends StatefulWidget {
  const ArchivePage({super.key});

  @override
  State<ArchivePage> createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(3.0),
            child: AdsPostCard(),
          );
        },
        itemCount: 10,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 6/10,),
      ),
    );
  }
}
