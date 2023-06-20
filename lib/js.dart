import 'package:js/js.dart';

@JS("FlutterCrossCertWeb")
class FlutterCrossCertJs {
  external Future<String?> sign(String target);
}
