import 'package:url_launcher/url_launcher.dart';

enum SocialMediaCallback {
  facebook,
  instagram,
  twitter,
  linkedIn,
}

extension ext on SocialMediaCallback {
  Function get callback {
    switch (this) {
      case SocialMediaCallback.facebook:
        return () {
          launch('https://www.facebook.com');
        };

      case SocialMediaCallback.instagram:
        return () {
          launch('https://www.instagram.com');
        };

      case SocialMediaCallback.twitter:
        return () {
          launch('https://www.twitter.com');
        };

      case SocialMediaCallback.linkedIn:
        return () {
          launch('https://www.linkedin.com');
        };
    }
  }
}
