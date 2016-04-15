@HtmlImport('landing_page.html')
library hero_animation_demo.lib.landing_page;
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer_elements/paper_icon_button.dart';
import 'package:polymer_elements/iron_icon.dart';
import 'package:polymer_elements/paper_card.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/neon_shared_element_animatable_behavior.dart';
import 'package:polymer_elements/neon_animation/animations/fade_in_animation.dart';
import 'package:polymer_elements/neon_animation/animations/fade_out_animation.dart';
import 'package:polymer_elements/neon_animation/animations/hero_animation.dart';
import 'dart:html';
import 'dart:async';

/**
 * A Polymer landing-page element.
 */
@PolymerRegister('landing-page')
class LandingPage extends PolymerElement with NeonSharedElementAnimatableBehavior {

  /// Constructor used to create instance of LandingPage.
  LandingPage.created() : super.created();


  @property
  Map get animationConfig => {
    'entry': [
      {
        'name': 'fade-out-animation',
        'node': this
      }],
    'exit': [
      {
        'name': 'hero-animation',
        'id': 'hero',
        'fromPage': this
      },
      {
        'name': 'fade-out-animation',
        'node': this
      }]
  };

  @Property(notify: true)
  Map sharedElements = {};

  attached() {
    super.attached();
    set('sharedElements', { 'hero': this.querySelector('paper-card .header')});
  }


  @reflectable
  goToMainPage(event, [_]) {
    this.fire('go-to-main-page');
  }
}
