import 'package:polymer/polymer.dart';

import "../config.dart";

@CustomTag('village-navbar')
class VillageNavbarElement extends PolymerElement {
  final List menubar = toObservable([
    {
      'title':'Info',
      'page':'infos/infos.html',
    },


  ]);


  VillageNavbarElement.created() : super.created() {
  }
  bool get applyAuthorStyles => true;
}