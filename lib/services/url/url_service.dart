//import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlService {
  static void launchURL() async {
    final Uri url = Uri.parse('https://epuap.login.gov.pl/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
