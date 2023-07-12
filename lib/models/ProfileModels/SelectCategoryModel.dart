// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
enum Pages {
  ads,
  archive,
  summary,
}

class SelectCategoryModel extends ChangeNotifier {
  int index = 0;
  var page = Pages.ads;
  void SelectToAds() {
    index = 0;
    page = Pages.ads;
    notifyListeners();
  }
  void SelectToArchive() {
    index = 1;
    page = Pages.archive;
    notifyListeners();
  }
  void SelectToSummary() {
    page = Pages.summary;
    index = 2;
    notifyListeners();
  }
}