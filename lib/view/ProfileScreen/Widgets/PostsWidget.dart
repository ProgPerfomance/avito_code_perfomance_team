import 'package:avito_code_perfomance_team/models/ProfileModels/SelectCategoryModel.dart';
import 'package:avito_code_perfomance_team/view/ProfileScreen/Widgets/Posts/ads/AdsPage.dart';
import 'package:avito_code_perfomance_team/view/ProfileScreen/Widgets/Posts/archive/ArchivePage.dart';
import 'package:avito_code_perfomance_team/view/ProfileScreen/Widgets/Posts/summary/SummaryPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

List PostPages = [
  const AdsPage(),
  const ArchivePage(),
  const SummaryPage(),
];

class PostWidget extends StatefulWidget {

  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<SelectCategoryModel>();
    return Container(
        child: PostPages[model.index],
    );
  }
}
