import 'package:avito_code_perfomance_team/view/ProfileScreen/Widgets/PostsWidget.dart';
import 'package:avito_code_perfomance_team/view/ProfileScreen/Widgets/SelectCategory.dart';
import 'package:avito_code_perfomance_team/view/ProfileScreen/Widgets/UserTopInfo.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UserTopInfo(),
          SizedBox(height: 10,),
          SelectCategoryWidget(),
          PostWidget(),
        ],
      )),
    );
  }
}
