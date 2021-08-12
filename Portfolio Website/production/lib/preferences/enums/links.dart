enum Links { facebook, instagram, twitter, linkedin }

extension link on Links {
  Uri get url {
    switch (this) {
      case Links.facebook:
        return Uri.parse('https://www.facebook.com');
      case Links.twitter:
        return Uri.parse('https://www.twitter.com');
      case Links.instagram:
        return Uri.parse('https://www.instagram.com');
      case Links.linkedin:
        return Uri.parse('https://www.linkedin.com');
    }
  }
}
