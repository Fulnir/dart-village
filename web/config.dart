// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler

import 'dart:async';
import 'dart:html';
import 'package:yaml/yaml.dart';
import 'models.dart';

//final VillageConfig  config = new VillageConfig.initialize();
VillageConfig  config ;

class  VillageConfig {
  String title ;
  String host ;
  List addresses = [];
  Address imprintAddress;

  static Future  initialize() {
    var completer = new Completer();
    VillageConfig newConfig = new VillageConfig();
    HttpRequest.getString("../config.yaml").then(
        (configText) {
          var configMap =loadYaml(configText);

          newConfig.title = configMap['title'];
          newConfig.host = configMap['host'];
          var imprintAddressEmail =  configMap['imprintEmail'];
          var addressYaml = configMap['addresses'];
          addressYaml.forEach((k, v) {
            var entry = new Address();
            entry.name = k;
            entry.email = v['email'];
            entry.web = v['web'];
            //entry['name'] = k;
            newConfig.addresses.add(entry);
            if (imprintAddressEmail == v['email']) {
              newConfig.imprintAddress = entry;
            }
          });


          print('newConfig.addresses ${newConfig.addresses}');
          completer.complete(newConfig);
        },
        onError: (error) => completer.completeError(error));
    return completer.future;
  }
}
