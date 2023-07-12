import 'package:avito_code_perfomance_team/models/ProfileModels/SelectCategoryModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({super.key});

  @override
  State<SelectCategoryWidget> createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  @override
  Widget build(BuildContext context) {
    final modelread = context.read<SelectCategoryModel>();
    final modelwatch = context.watch<SelectCategoryModel>();
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                modelread.SelectToAds();
              },
              child: Text(
                'Объявления',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: modelwatch.page == Pages.ads
                        ? Colors.blue
                        : Colors.black),
              )),
          GestureDetector(
              onTap: () {
                modelread.SelectToArchive();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Архив',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: modelwatch.page == Pages.archive
                          ? Colors.blue
                          : Colors.black),
                ),
              )),
          GestureDetector(
              onTap: () {
                modelread.SelectToSummary();
              },
              child: Text(
                'Резюме',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: modelwatch.page == Pages.summary
                        ? Colors.blue
                        : Colors.black),
              )),
        ],
      ),
    );
  }
}
