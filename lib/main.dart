import 'package:avito_code_perfomance_team/models/ProfileModels/SelectCategoryModel.dart';
import 'package:avito_code_perfomance_team/view/Auth/SignInScreen/SignInScreen.dart';
import 'package:avito_code_perfomance_team/view/HomeScreen/HomeScreen.dart';
import 'package:avito_code_perfomance_team/view/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Avito());
}

class Avito extends StatelessWidget {
  const Avito({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.light(),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (context) => SelectCategoryModel(),
          child: ProfileScreen(),
        ),
      ], child: const SignInScreen()),
    );
  }
}
//
