import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

openUrl(String url) async => html.window.open(url, "_blank", 'location=yes');
