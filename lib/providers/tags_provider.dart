import 'package:flutter/material.dart';

class TagsProvider extends ChangeNotifier {
  List<String> _tags = [];

  List<String> get tags => _tags;

  String imageData = "";

  void setTag(List<String> tagList) {
    _tags = tagList;
  }

  void setImage(String imageData) {
    this.imageData = imageData;
  }

  void addTag(String tag) {
    _tags.add(tag);
    notifyListeners();
  }

  void removeTag(int index) {
    _tags.removeAt(index);
    notifyListeners();
  }
}
