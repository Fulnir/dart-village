// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler

import 'package:polymer/polymer.dart';
import "../config.dart";



@CustomTag('village-app')
class VillageInfosElement extends PolymerElement {
  @observable String title = config.title;


  VillageInfosElement.created() : super.created() {
  }
  bool get applyAuthorStyles => true;
}