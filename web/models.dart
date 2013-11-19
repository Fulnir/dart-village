library models;

import 'package:polymer/polymer.dart';

class Address extends Object with Observable {
  @observable String name;
  String email;
  String web;

  Address();

  blank() {
    name = '';
  }
}
