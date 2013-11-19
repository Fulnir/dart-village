// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler

import 'package:polymer/polymer.dart';
import "../config.dart";
import "../models.dart";

@CustomTag('village-imprint')
class VillageImprintElement extends PolymerElement {
  final Address imprintAddress = toObservable(config.imprintAddress);

  VillageImprintElement.created() : super.created() {
  }
  bool get applyAuthorStyles => true;
}