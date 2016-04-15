@HtmlImport('main_page.html')
library hero_animation_demo.lib.main_page;
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/paper_header_panel.dart';
import 'package:polymer_elements/paper_toolbar.dart';
import 'package:polymer_elements/neon_shared_element_animatable_behavior.dart';
import 'package:polymer_elements/neon_animation/animations/fade_in_animation.dart';
import 'package:polymer_elements/neon_animation/animations/fade_out_animation.dart';
import 'package:polymer_elements/neon_animation/animations/hero_animation.dart';
import 'dart:html';
import 'dart:async';


/**
 * A Polymer main-page element.
 */
@PolymerRegister('main-page')
class MainPage extends PolymerElement with NeonSharedElementAnimatableBehavior {

  /// Constructor used to create instance of MainPage.
  MainPage.created() : super.created();


  @property
  Map get animationConfig => {
    'entry': [
      {
        'name': 'hero-animation',
        'id': 'hero',
        'toPage': this
      }, {
        'name': 'fade-in-animation',
        'node': this
      }],
    'exit': [
      {
        'name': 'fade-out-animation',
        'node': this
      }]
  };

  @Property(notify: true)
  Map sharedElements = {};

  attached() {
    super.attached();

    set('sharedElements', { 'hero': this.querySelector('#titulo')});
  }

}
