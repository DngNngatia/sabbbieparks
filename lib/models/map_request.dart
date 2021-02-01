import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

const apiKey = "AIzaSyAnRNSn36QJmZmcocAkuAcTjYG_NhmjoNQ";

class GoogleMapsServices {
  Future<String> getRouteCoordinates(LatLng l1, LatLng l2) async {
    String url =
        "https://maps.googleapis.com/maps/api/directions/json?origin=${l1.latitude},${l1.longitude}&destination=${l2.latitude},${l2.longitude}&key=$apiKey";
    http.Response response = await http.get(url);
    print(response.body);
    return response.body;
  }
}