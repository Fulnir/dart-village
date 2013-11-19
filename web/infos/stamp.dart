// Copyright (C) 2013 Edwin Bühler. All Rights Reserved.
//
// @author Edwin Bühler

import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:async';
import 'package:gravatar/gravatar.dart';

@CustomTag('village-stamp')
class VillageStampElement extends PolymerElement {
  String _aEmail;

  @published String get email => _aEmail;
  void set email(String m) {
    _aEmail = m;
    draw(_aEmail);
  }
  VillageStampElement.created() : super.created() {
    //draw("fulnir@gmail.com");

  }

  void draw(String email) {
print(' email ${email}');
    var s = 128;
    CanvasElement canvas = $['stampcanvas'];
    final CanvasRenderingContext2D  context = (canvas ).context2D;

    ImageElement stampBackground = new ImageElement(src: "images/stampBackground.png", width: s, height: s);

    ImageElement stampPicture;
    if (email == null) {
      stampPicture = new ImageElement(src: "Icon.png", width: s, height: s);
    } else {
      var gravatar = new Gravatar(email);
      var gravatarUrl = gravatar.imageUrl();
      stampPicture = new ImageElement(src: gravatarUrl, width: s, height: s);
    }


    //ImageElement stampPicture = new ImageElement(src: "images/stampPainting.png", width: s, height: s);
    ImageElement stampCancellation = new ImageElement(src: "images/stampCancellation.png", width: s, height: s);

    var futures = [stampBackground.onLoad.first, stampPicture.onLoad.first, stampCancellation.onLoad.first];

    Future.wait(futures).then((_) {
      context.drawImageScaled(stampBackground, 0, 0, s, s);
      CanvasElement pictCanvas = new CanvasElement(width: s, height: s);
      CanvasRenderingContext2D ctx = pictCanvas.context2D;
      ctx.translate((s / 8.533), (s / 4.741));
      ctx.rotate(-0.19);
      ctx.drawImageScaled(stampPicture, 0, 0, (s / 1.6), (s / 1.42));
      context.drawImage(pictCanvas, 0, 0);
      context.drawImageScaled(stampCancellation, 0, 0, s, s);
    });
  }
}