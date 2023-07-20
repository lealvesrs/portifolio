import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxService {
  void abrirUrl(String data) async {
    final url = data;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Não foi possível abrir $url';
    }
  }

  void abrirEmail() async {
    const emailLaunchUri =
        'mailto:leticiadeoliveira.corp@gmail.com?subject=Gostei%20do%20seu%20portifólio&body=Hello%20World';

    if (await canLaunchUrl(Uri.parse(emailLaunchUri))) {
      await launchUrl(Uri.parse(emailLaunchUri));
    } else {
      throw 'Não foi possível abrir $emailLaunchUri';
    }
  }
}
