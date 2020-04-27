import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<Imagery>> getImagery() async {
  final response = await http.get('https://api.nasa.gov/EPIC/api/natural/date/2019-05-30?api_key=gsfEXbNnWakbyHncc562Xz5Bwsm2XEcBiZ2K3mNo');
  if (response.statusCode == 200) {
    return Imagery.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load Imagery');
  }
}

class Imagery {
  final String identifier;
  final String caption;
  final String image;
  final String date;

  Imagery({this.identifier, this.caption, this.image, this.date})

  factory Imagery.fromJson(Map<String, dynamic> json) {
    return Imagery(
      identifier: json['identifier'],
      caption: json['caption'],
      image: json['image'],
      date: json['date'],
    );
  }
}