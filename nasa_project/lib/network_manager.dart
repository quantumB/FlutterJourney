import 'dart:convert';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Imagery>> fetchImagery(http.Client client) async {
  final response = await client.get('https://api.nasa.gov/EPIC/api/natural/date/2019-05-30?api_key=gsfEXbNnWakbyHncc562Xz5Bwsm2XEcBiZ2K3mNo');
  return compute(parseImagery, response.body);
}

List<Imagery> parseImagery(String responseBody) {
  final parse = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parse.map<Imagery>((json) => Imagery.fromJson(json)).toList();
}

class Imagery {
  final String identifier;
  final String caption;
  final String image;
  final String date;

  Imagery({this.identifier, this.caption, this.image, this.date});

  factory Imagery.fromJson(Map<String, dynamic> json) {
    return Imagery(
      identifier: json['identifier'],
      caption: json['caption'],
      image: json['image'],
      date: json['date'],
    );
  }
}