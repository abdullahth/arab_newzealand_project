import 'package:production/preferences/enums/links.dart';
import 'package:url_launcher/url_launcher.dart';

void navigateToFacebook() {
  launch(Links.facebook.url.toString());
}

void navigateToInstagram() {
  launch(Links.instagram.url.toString());
}

void navigateToTwitter() {
  launch(Links.twitter.url.toString());
}

void navigateToLinkedin() {
  launch(Links.linkedin.url.toString());
}
