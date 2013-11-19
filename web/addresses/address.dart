// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler

import 'package:polymer/polymer.dart';
import '../models.dart';
import 'dart:html';

@CustomTag('village-address')
class VillageAddressElement extends LIElement with Polymer, Observable {
  @published Address address = new Address();

  VillageAddressElement.created() : super.created() {

  }
  bool get applyAuthorStyles => true;
}