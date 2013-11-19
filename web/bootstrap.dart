
import 'package:polymer/polymer.dart';
import 'dart:async';
import "config.dart";

void main() {
  (VillageConfig.initialize()).then((value){
    config = value;
    initPolymer();
  });
}