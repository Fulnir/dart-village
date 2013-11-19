import 'package:polymer/polymer.dart';

import "../config.dart";

@CustomTag('village-addresses')
class VillageAddressesElement extends PolymerElement {
  final List addresses = toObservable(config.addresses);

  VillageAddressesElement.created() : super.created() {
  }
  bool get applyAuthorStyles => true;
}