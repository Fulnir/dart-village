// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler

import 'package:polymer/polymer.dart';
import "config.dart";



@CustomTag('village-app')
class VillageElement extends PolymerElement {
  @observable String title = config.title;
  @observable String host = config.host;

  VillageElement.created() : super.created() {
  }
  bool get applyAuthorStyles => true;
}