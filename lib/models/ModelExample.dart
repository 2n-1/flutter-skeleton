import 'dart:async';
import 'package:scoped_model/scoped_model.dart';

enum SOME_ENUM {
  ENUM_1,
  ENUM_2,
  ENUM_3,
}

const String CONST = "SOME CONST STRING";

class ModelExample extends Model {
  List<String> _strings = List();
  List<String> get strings => _strings;
}
