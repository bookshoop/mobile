import 'package:bookforest/core/configs/firebase/firebase_options_dev.dart';
import 'package:bookforest/core/configs/firebase/firebase_options_prod.dart';
import 'package:firebase_core/firebase_core.dart';

class Config {
  final String baseUrl;
  final FirebaseOptions firebaseOptions;
  final String bundle;
  final String appName;
  final String flavor;

  Config._dev()
      : baseUrl = 'https://210.90.113.33:18080',
        bundle = 'com.jn.bookforest.dev',
        appName = '[개발용]책숲',
        flavor = 'dev',
        firebaseOptions = FirebaseOptionsDev.currentPlatform;

  Config._product()
      : baseUrl = 'https://210.90.113.33:18080',
        bundle = 'com.jn.bookforest',
        appName = '책숲',
        flavor = 'product',
        firebaseOptions = FirebaseOptionsProd.currentPlatform;

  factory Config(String? flavor) {
    if (flavor == 'dev') {
      instance = Config._dev();
    } else if (flavor == 'product') {
      instance = Config._product();
    } else {
      throw Exception("Unknown flavor : $flavor}");
    }
    return instance;
  }

  static late final Config instance;
}
