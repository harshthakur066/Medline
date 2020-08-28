import 'package:http/http.dart' as http;
import 'package:medline/models/doctor.dart';

class Networking {
  Future fetchDoctors() async {
    String url = "https://medline.firebaseio.com/doctors.json";

    http.Response response = await http.get(url);
  }
}

Future addDoctor(Doctor doctor) async {
  String url = "https://medline.firebaseio.com/doctors.json";

  http.Response response = await http.post(url, body: doctor.toJson());
}
