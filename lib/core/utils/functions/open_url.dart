import 'package:get/get.dart';
import "package:universal_html/html.dart" as html;
import 'package:url_launcher/url_launcher.dart';

openUrl(url) async {
  if (GetPlatform.isMobile) {
    if (!await launchUrl(Uri.parse(url))) throw 'Não encontrado $url';
  } else {
    html.window.open(url, 'new tab');
  }
}
