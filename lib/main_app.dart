// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
@HtmlImport('main_app.html')
library hero_animation_demo.lib.main_app;		

import 'dart:html';

import 'package:polymer_elements/paper_input.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';
import 'package:polymer_elements/neon_animated_pages.dart';
import 'package:polymer_elements/iron_flex_layout/classes/iron_flex_layout.dart';
import 'main_page.dart';
import 'landing_page.dart';


@PolymerRegister('main-app')
class MainApp extends PolymerElement {

  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created();


  attached() {
    super.attached();

    addEventListener('go-to-main-page', _showMainPage);
  }

  _showMainPage(event, [_]) {
    NeonAnimatedPages neonAnimatedPages = querySelector('neon-animated-pages');
    neonAnimatedPages.selectNext();
  }
}
