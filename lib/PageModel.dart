import 'package:flutter/material.dart';
class PageModel{
  String _titles;
  String _descriptions;
  IconData _icons;
  String _images;
  PageModel(this._titles, this._descriptions, this._icons, this._images);

  String get images => _images;

  IconData get icons => _icons;

  String get descriptions => _descriptions;

  String get titles => _titles;
}