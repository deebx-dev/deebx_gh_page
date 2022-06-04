import 'dart:html' as html;

openUrl(String url) async => html.window.open(url, "_blank", 'location=yes');
