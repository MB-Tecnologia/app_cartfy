import 'package:flutter/material.dart';
class SizeScreen{

  BuildContext? _context = null;
  double _width = 0;
  double _height = 0;

  double get width => _width;
  double get height => _height;
  SizeScreen(BuildContext context){
    _context = context;
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
  }
  
}